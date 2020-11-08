package com.example.dhakatransport;


import android.graphics.Color;
import android.os.Bundle;
import android.view.View;


import androidx.appcompat.app.AppCompatActivity;
import androidx.databinding.DataBindingUtil;
import androidx.navigation.NavController;
import androidx.navigation.NavOptions;
import androidx.navigation.fragment.NavHostFragment;

import com.example.dhakatransport.databinding.ActivityMainBinding;
import com.example.dhakatransport.ui.MenuSheet;



public class MainActivity extends AppCompatActivity {
    private ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding = DataBindingUtil.setContentView(this, R.layout.activity_main);

        binding.homeBtn.setTextColor(Color.WHITE);
        binding.routeBtn.setTextColor(getResources().getColor(R.color.colorGrey));

        NavHostFragment hostFragment = (NavHostFragment) getSupportFragmentManager().
                findFragmentById(R.id.nav_host_fragment);
        final NavController navController = hostFragment.getNavController();

        final NavOptions navOptions = new  NavOptions.Builder()
                .setEnterAnim(R.anim.fragment_fade_enter)
                .setPopEnterAnim(R.anim.fragment_fade_exit)
                .build();


        binding.homeBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                binding.homeBtn.setTextColor(Color.WHITE);
                binding.routeBtn.setTextColor(getResources().getColor(R.color.colorGrey));

                navController.navigate(R.id.homeFragment,null,navOptions);
            }
        });

        binding.routeBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                binding.routeBtn.setTextColor(Color.WHITE);
                binding.homeBtn.setTextColor(getResources().getColor(R.color.colorGrey));

                navController.navigate(R.id.busRouteFragment,null,navOptions);

            }
        });


        binding.menuBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                MenuSheet sheet = new MenuSheet(navController);
                sheet.show(getSupportFragmentManager(), "MenuSheet");

            }
        });
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        finish();
    }
}
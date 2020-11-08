package com.example.dhakatransport.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

import com.example.dhakatransport.databinding.ActivityAboutBinding;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.DataBindingUtil;

import android.view.View;

import com.example.dhakatransport.R;

public class AboutActivity extends AppCompatActivity {
    private ActivityAboutBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding = DataBindingUtil.setContentView(this, R.layout.activity_about);
        setSupportActionBar(binding.toolBar);

        binding.backButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });


        binding.faebookBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent facebookIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.facebook.com/hkobiir"));
                startActivity(facebookIntent);
            }
        });
        binding.gitBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent gitIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.github.com/hkobir"));
                startActivity(gitIntent);
            }
        });
    }
}
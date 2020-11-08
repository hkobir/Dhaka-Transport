package com.example.dhakatransport.ui;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.fragment.NavHostFragment;

import com.example.dhakatransport.R;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;

public class MenuSheet extends BottomSheetDialogFragment {
    private LinearLayout aboutBtn, rateBtn, feedbackBtn, busImageBtn;
    private Context context;
    private NavController navController;

    public MenuSheet(NavController navController) {
        this.navController = navController;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
//        context = container.getContext();
        View view = inflater.inflate(R.layout.menu_layout_sheet, container, false);
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        //define codes here
        aboutBtn = view.findViewById(R.id.aboutBtn);
        rateBtn = view.findViewById(R.id.rateBtn);
        feedbackBtn = view.findViewById(R.id.feedBackBtn);
        busImageBtn = view.findViewById(R.id.busImageBtn);

        //action Listner
        aboutBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dismiss();
                startActivity(new Intent(getActivity(),AboutActivity.class));
            }
        });

        rateBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

            }
        });

        feedbackBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dismiss();
                sendMail("Feedback of Dhaka-Transport");
            }
        });
        busImageBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                dismiss();
                sendMail("Bus image: Dhaka-Transport");
            }
        });
    }

    public void sendMail(String subject) {
        Intent emailSelectorIntent = new Intent(Intent.ACTION_SENDTO);
        emailSelectorIntent.setData(Uri.parse("mailto:"));

        final Intent emailIntent = new Intent(Intent.ACTION_SEND);
        emailIntent.putExtra(Intent.EXTRA_EMAIL, new String[]{"hkobir@programmer.net"});
        emailIntent.putExtra(Intent.EXTRA_SUBJECT, subject);
        emailIntent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        emailIntent.addFlags(Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
        emailIntent.setSelector(emailSelectorIntent);


        if (emailIntent.resolveActivity(getActivity().getPackageManager()) != null)
            startActivity(emailIntent);
    }
}

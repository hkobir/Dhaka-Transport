package com.example.dhakatransport.ui;

import android.app.SearchManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;

import com.example.dhakatransport.R;
import com.example.dhakatransport.adapter.RouteListAdapter;
import com.example.dhakatransport.databinding.FragmentBusRouteBinding;
import com.example.dhakatransport.models.Bus;

import java.util.ArrayList;
import java.util.List;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link BusRouteFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class BusRouteFragment extends Fragment {
    private List<Bus> busList;
    private FragmentBusRouteBinding binding;
    private RouteListAdapter routeListAdapter;
    private Context context;
    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public BusRouteFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment BusRouteFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static BusRouteFragment newInstance(String param1, String param2) {
        BusRouteFragment fragment = new BusRouteFragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        binding = DataBindingUtil.inflate(inflater, R.layout.fragment_bus_route, container, false);
        context = container.getContext();
        busList = new ArrayList<>();
        return binding.getRoot();
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        getRoutData();


    }

    private void getRoutData() {
        Bus bus1 = new Bus("Ayat", "Sony Hall", "Kamlapur");
        busList.add(bus1);
        Bus bus2 = new Bus("Anabil", "Sign Board", "Gazipur Chowrasta");
        busList.add(bus2);
        Bus bus3 = new Bus("Bahon", "Mirpur-14", "Khilgaon");
        busList.add(bus3);
        Bus bus4 = new Bus("Bikolpo", "Mirpur-12", "Motijheel");
        busList.add(bus4);
        Bus bus5 = new Bus("City Link", "Chittagong Road", "Ghatar char");
        busList.add(bus5);
        Bus bus6 = new Bus("Himachol", "Metro Hall", "Mirpur 12");
        busList.add(bus6);
        Bus bus7 = new Bus("RAIDA ENTERPRISE", "Diabari", "Postogola");
        busList.add(bus7);
        Bus bus8 = new Bus("SALSABIL", "Postogola", "Gajipur");
        busList.add(bus8);
        Bus bus9 = new Bus("Labbaik", "Savar", "Sign Board");
        busList.add(bus9);
        Bus bus10 = new Bus("BALAKA", "Sayedabad", "Tongi");
        busList.add(bus10);
        Bus bus11 = new Bus("TORONGO PLUS", "Mohammadpur", "Banasree");
        busList.add(bus11);
        Bus bus12 = new Bus("ACHIM PORIBAHAN ", "Gabtoli", "Rampura");
        busList.add(bus12);
        Bus bus13 = new Bus("SHADHIN", "Mohammadpur", "Demra");
        busList.add(bus13);
        Bus bus14 = new Bus("Chiriyakhana", "Savar", "Kamalapur");
        busList.add(bus14);

        initBusListView();
    }

    private void initBusListView() {
        routeListAdapter = new RouteListAdapter(busList);
        binding.routeLV.setAdapter(routeListAdapter);
    }

}
package com.example.dhakatransport.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

import androidx.appcompat.widget.AppCompatTextView;

import com.example.dhakatransport.R;
import com.example.dhakatransport.models.Bus;

import java.util.List;

public class RouteListAdapter extends BaseAdapter {
    private List<Bus> busList;


    public RouteListAdapter(List<Bus> busList) {
        this.busList = busList;
    }

    @Override
    public int getCount() {
        return busList.size();
    }

    @Override
    public Object getItem(int i) {
        return busList.get(i);
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext())
                    .inflate(R.layout.item_bus_route_layoute, viewGroup, false);
        }
        Bus cBus = busList.get(i);
        AppCompatTextView bName = view.findViewById(R.id.bus_name);
        AppCompatTextView sName = view.findViewById(R.id.source_name);
        AppCompatTextView dName = view.findViewById(R.id.dest_name);
        bName.setText(cBus.getBusName());
        sName.setText(cBus.getSourceName());
        dName.setText(cBus.getDestinationName());
        return view;
    }
}

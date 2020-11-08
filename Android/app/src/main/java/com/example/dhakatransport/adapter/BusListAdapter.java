package com.example.dhakatransport.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;

import com.example.dhakatransport.R;

import java.util.List;

public class BusListAdapter extends RecyclerView.Adapter<BusListAdapter.ViewHoder> {
    private List<String> busList;
    private String routeDetail;

    public BusListAdapter() {
    }

    public BusListAdapter(List<String> busList, String routeDetail) {
        this.busList = busList;
        this.routeDetail = routeDetail;
    }

    @NonNull
    @Override
    public BusListAdapter.ViewHoder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_bus_layout, parent, false);
        return new ViewHoder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull BusListAdapter.ViewHoder holder, int position) {
        String busName = busList.get(position);
        holder.busName.setText(busName);
        holder.routeName.setText(routeDetail);
    }

    @Override
    public int getItemCount() {
        return busList.size();
    }

    public class ViewHoder extends RecyclerView.ViewHolder {
        private AppCompatTextView busName, routeName;

        public ViewHoder(@NonNull View itemView) {
            super(itemView);
            busName = itemView.findViewById(R.id.busNameTV);
            routeName = itemView.findViewById(R.id.routeNameTV);
        }
    }
}

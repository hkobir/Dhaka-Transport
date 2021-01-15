package com.example.dhakatransport.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;

import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;

import com.example.dhakatransport.R;
import com.example.dhakatransport.models.Bus;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class RouteListAdapter extends ArrayAdapter<Bus> {
    private List<Bus> busList;
    private ArrayList<Bus> arrayList; //used for the search bar
    private LayoutInflater mInflater;
    private int layoutResource;
    private Context mContext;

    public RouteListAdapter(@NonNull Context context, @LayoutRes int resource, @NonNull List<Bus> buses) {
        super(context, resource, buses);
        mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        layoutResource = resource;
        this.mContext = context;

        this.busList = buses;
        arrayList = new ArrayList<>();
        this.arrayList.addAll(busList);
    }

    private static class ViewHolder {
        AppCompatTextView bName, sName, dName;

    }

    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        final ViewHolder holder;
        if (convertView == null) {
            convertView = mInflater.inflate(layoutResource, parent, false);
            holder = new ViewHolder();

            holder.bName = convertView.findViewById(R.id.bus_name);
            holder.sName = convertView.findViewById(R.id.source_name);
            holder.dName = convertView.findViewById(R.id.dest_name);


            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }

        holder.bName.setText(getItem(position).getBusName());
        holder.sName.setText(getItem(position).getSourceName());
        holder.dName.setText(getItem(position).getDestinationName());


        return convertView;
    }

    // filter name in Search Bar
    public void filter(String characterText) {
        characterText = characterText.toLowerCase(Locale.getDefault());
        busList.clear();
        if (characterText.length() == 0) {
            busList.addAll(arrayList);
        } else {
            busList.clear();
            for (Bus bus : arrayList) {
                if (bus.getBusName().toLowerCase(Locale.getDefault()).contains(characterText)) {
                    busList.add(bus);
                }
            }
        }
        notifyDataSetChanged();
    }
}

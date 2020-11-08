package com.example.dhakatransport.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.database.DatabaseUtils;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;
import com.example.dhakatransport.R;
import com.example.dhakatransport.adapter.BusListAdapter;
import com.example.dhakatransport.databinding.FragmentHomeBinding;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;


public class HomeFragment extends Fragment implements AdapterView.OnItemSelectedListener {
    private FragmentHomeBinding binding;
    private List<String> routeList;
    private List<String> sourceList;
    private List<String> destinationList;
    private List<String> busList;
    private BusListAdapter busListAdapter;
    private RequestQueue requestQueue;
    private String routeUrl, placeUrl, busUrl;
    private String routeId, routeName, routeDetail, sourceName = "", destinationName = "";
    private Context context;
    private AlertDialog progressDialog;
    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private static final String ARG_PARAM3 = "param3";

    // TODO: Rename and change types of parameters
    private int mParam1;
    private int mParam2;
    private int mParam3;

    public HomeFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment HomeFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static HomeFragment newInstance(int param1, int param2, int param3) {
        HomeFragment fragment = new HomeFragment();
        Bundle args = new Bundle();
        args.putInt(ARG_PARAM1, param1);
        args.putInt(ARG_PARAM2, param2);
        args.putInt(ARG_PARAM3, param3);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getInt(ARG_PARAM1);
            mParam2 = getArguments().getInt(ARG_PARAM2);
            mParam3 = getArguments().getInt(ARG_PARAM3);

        }
    }



    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        binding = DataBindingUtil.inflate(inflater, R.layout.fragment_home, container, false);
        //initiallize
        //progress dialogue set up

        progressDialog = new AlertDialog.Builder(container.getContext()).create();
        final View view = LayoutInflater.from(container.getContext()).inflate(R.layout.progress_diaog_layout, null);
        progressDialog.setCancelable(false);
        progressDialog.setView(view);

        context = container.getContext();
        busList = new ArrayList<>();
        routeList = new ArrayList<>();
        sourceList = new ArrayList<>();
        destinationList = new ArrayList<>();
        binding.busRV.setLayoutManager(new LinearLayoutManager(container.getContext()));
        requestQueue = Volley.newRequestQueue(container.getContext());
        routeUrl = "https://hkobir10.000webhostapp.com/localbus/api/routes";
        return binding.getRoot();
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        //Route spinner
        initRoutSpinner();

        binding.routeSP.setOnItemSelectedListener(this);

        binding.sourceSP.setOnItemSelectedListener(this);

        binding.destinationSP.setOnItemSelectedListener(this);
    }

    private void initRoutSpinner() {
        progressDialog.show();
        JsonObjectRequest jsonObjectRequest = new JsonObjectRequest(Request.Method.GET,
                routeUrl, null, new Response.Listener<JSONObject>() {
            @Override
            public void onResponse(JSONObject response) {

                try {
                    JSONArray jsonArray = response.getJSONArray("routes");
                    for (int i = 0; i < jsonArray.length(); i++) {
                        JSONObject jsonObject = jsonArray.getJSONObject(i);
                        String rName = jsonObject.optString("route_name");
                        routeList.add(rName);
                    }
                    binding.routeSP.setItem(routeList);
                    progressDialog.dismiss();
                } catch (JSONException e) {
                    e.printStackTrace();
                    progressDialog.dismiss();
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                progressDialog.dismiss();
//                Log.d("RouteError: ", error.getMessage());
            }
        });
        requestQueue.add(jsonObjectRequest);

    }


    @Override
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
        switch (adapterView.getId()) {
            case R.id.routeSP:
                sourceList.clear();
                destinationList.clear();
                routeId = String.valueOf(adapterView.getSelectedItemPosition() + 1);
                routeName = "r" + routeId;  //parse route name as r1, r2, ...
                placeUrl = "https://hkobir10.000webhostapp.com/localbus/api/places/" + routeId;
                requestQueue = Volley.newRequestQueue(context);
                progressDialog.show();
                JsonObjectRequest jsonObjectRequest = new JsonObjectRequest(Request.Method.GET, placeUrl, null, new Response.Listener<JSONObject>() {
                    @Override
                    public void onResponse(JSONObject response) {

                        try {
                            JSONArray jsonArray = response.getJSONArray("places");
                            for (int i = 0; i < jsonArray.length(); i++) {
                                JSONObject jsonObject = jsonArray.getJSONObject(i);
                                String pName = jsonObject.optString("place_name");
                                sourceList.add(pName);
                                destinationList.add(pName);
                            }
                            binding.sourceSP.setItem(sourceList);
                            binding.destinationSP.setItem(destinationList);
                            progressDialog.dismiss();
                        } catch (JSONException e) {
                            progressDialog.dismiss();
                            e.printStackTrace();
                        }
                    }
                }, new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        progressDialog.dismiss();
                    }
                });
                requestQueue.add(jsonObjectRequest);


                break;
            case R.id.sourceSP:
                sourceName = adapterView.getSelectedItem().toString();
                //populate item from recyclearView
                getBusData();
                break;
            case R.id.destinationSP:
                destinationName = adapterView.getSelectedItem().toString();
                //populate item from recyclearView
                getBusData();
                break;
        }
    }

    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {

    }

    private void getBusData() {

        if (!sourceName.equals("") && !destinationName.equals("")) {
            busUrl = "https://hkobir10.000webhostapp.com/localbus/api/buses/" + routeName + "/" + sourceName + "/" + destinationName;
            Log.d("BusApiURL: ", busUrl);

            busList.clear();
            requestQueue = Volley.newRequestQueue(context);
            progressDialog.show();
            JsonObjectRequest jsonObjectRequest = new JsonObjectRequest(Request.Method.GET,
                    busUrl, null, new Response.Listener<JSONObject>() {
                @Override
                public void onResponse(JSONObject response) {

                    try {
                        routeDetail = response.getJSONObject("route").optString("route_name");
                        JSONArray jsonArray = response.getJSONArray("buses");
                        for (int i = 0; i < jsonArray.length(); i++) {
                            JSONObject jsonObject = jsonArray.getJSONObject(i);
                            String bName = jsonObject.optString("bus_name");
                            busList.add(bName);
                        }
                        Log.d("busList: ", busList.toString());
                        busListAdapter = new BusListAdapter(busList, routeDetail);
                        binding.busRV.setAdapter(busListAdapter);
                        progressDialog.dismiss();

                    } catch (JSONException e) {
                        progressDialog.dismiss();
                        e.printStackTrace();
                    }
                }
            }, new Response.ErrorListener() {
                @Override
                public void onErrorResponse(VolleyError error) {
                    progressDialog.dismiss();
                }
            });

            requestQueue.add(jsonObjectRequest);
        }


    }



}
package com.example.dhakatransport.ui;

import android.content.Context;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;

import com.example.dhakatransport.R;
import com.example.dhakatransport.adapter.RouteListAdapter;
import com.example.dhakatransport.models.Bus;
import com.google.android.material.appbar.AppBarLayout;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link BusRouteFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class BusRouteFragment extends Fragment {
    private List<Bus> busList;

    private RouteListAdapter routeListAdapter;
    private Context context;
    private ListView routeLV;

    private static final String TAG = "ToolbarFragment";
    private static final int STANDARD_APPBAR = 0;
    private static final int SEARCH_APPBAR = 1;
    private int mAppBarState;
    EditText mSearchRoute;
    private AppBarLayout viewRouteBar, searchBar;
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
        View view = inflater.inflate(R.layout.fragment_bus_route, container, false);
        context = container.getContext();
        busList = new ArrayList<>();
        routeLV = view.findViewById(R.id.routeLV);

        viewRouteBar = view.findViewById(R.id.viewContactsToolbar);
        searchBar = view.findViewById(R.id.searchToolbar);
        mSearchRoute = view.findViewById(R.id.etSearchContacts);


        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        setAppBarState(STANDARD_APPBAR);


        ImageView ivSearchContact = (ImageView) view.findViewById(R.id.ivSearchIcon);
        ivSearchContact.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Log.d(TAG, "onClick: clicked searched icon");
                toggleToolBarState();
            }
        });

        ImageView ivBackArrow = (ImageView) view.findViewById(R.id.ivBackArrow);
        ivBackArrow.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Log.d(TAG, "onClick: clicked back arrow.");
                toggleToolBarState();

            }
        });


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
        routeListAdapter = new RouteListAdapter(context, R.layout.item_bus_route_layoute, busList);
        mSearchRoute.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                String text = mSearchRoute.getText().toString().toLowerCase(Locale.getDefault());
                routeListAdapter.filter(text);
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {

            }

            @Override
            public void afterTextChanged(Editable s) {

            }
        });


        routeLV.setAdapter(routeListAdapter);
    }


    // Initiate toggle (it means when you click the search icon it pops up the editText and clicking the back button goes to the search icon again)
    private void toggleToolBarState() {
        Log.d(TAG, "toggleToolBarState: toggling AppBarState.");
        if (mAppBarState == STANDARD_APPBAR) {
            setAppBarState(SEARCH_APPBAR);
        } else {
            setAppBarState(STANDARD_APPBAR);
        }
    }

    // Sets the appbar state for either search mode or standard mode.
    private void setAppBarState(int state) {

        Log.d(TAG, "setAppBaeState: changing app bar state to: " + state);

        mAppBarState = state;
        if (mAppBarState == STANDARD_APPBAR) {
            searchBar.setVisibility(View.GONE);
            viewRouteBar.setVisibility(View.VISIBLE);

            View view = getView();
            InputMethodManager im = (InputMethodManager) getActivity().getSystemService(Context.INPUT_METHOD_SERVICE);
            try {
                im.hideSoftInputFromWindow(view.getWindowToken(), 0); // make keyboard hide
            } catch (NullPointerException e) {
                Log.d(TAG, "setAppBaeState: NullPointerException: " + e);
            }
        } else if (mAppBarState == SEARCH_APPBAR) {
            viewRouteBar.setVisibility(View.GONE);
            searchBar.setVisibility(View.VISIBLE);
            InputMethodManager im = (InputMethodManager) getActivity().getSystemService(Context.INPUT_METHOD_SERVICE);

            mSearchRoute.requestFocus();
            im.toggleSoftInput(InputMethodManager.SHOW_FORCED, 0); // make keyboard popup

        }
    }

    @Override
    public void onResume() {
        super.onResume();
        setAppBarState(STANDARD_APPBAR);
        Log.d("Busroute: ", "onResume() called");
    }

    @Override
    public void onPause() {
        super.onPause();
        Log.d("Busroute: ", "onPause() called");
    }
}
package com.example.dhakatransport.models;

public class Bus {
    String busName, sourceName, destinationName;

    public Bus() {
    }

    public Bus(String busName, String sourceName, String destinationName) {
        this.busName = busName;
        this.sourceName = sourceName;
        this.destinationName = destinationName;
    }

    public String getBusName() {
        return busName;
    }

    public void setBusName(String busName) {
        this.busName = busName;
    }

    public String getSourceName() {
        return sourceName;
    }

    public void setSourceName(String sourceName) {
        this.sourceName = sourceName;
    }

    public String getDestinationName() {
        return destinationName;
    }

    public void setDestinationName(String destinationName) {
        this.destinationName = destinationName;
    }
}

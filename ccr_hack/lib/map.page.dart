import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController mapController;
  Set<Marker> markers = new Set<Marker>();
  double lat = -23.6815315;
  double long = -46.8754829;

void _onMapCreated(GoogleMapController controller){
  mapController = controller;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps"),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          onCameraMove: (data) {
            print(data);
          },
          onTap: (position) {
            print(position);
          },
          initialCameraPosition: CameraPosition(
            target: LatLng(lat, long),
            zoom: 11.0,
            ),
            markers: markers,
          ),
    );
  }
}
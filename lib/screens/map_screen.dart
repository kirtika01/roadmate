
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final MapController _mapController = MapController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              //initialCenter: LatLng(21.2203996,81.3081514),
              initialZoom: 13.0,
              onTap: (tapPosition, latlng){
              }
            ),
            children: [
              TileLayer(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              )
            ],
          )
        ],
      ),
    );
  }
}

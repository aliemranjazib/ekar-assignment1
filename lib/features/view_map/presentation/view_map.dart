import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test1/features/view_vehicle/presentation/pages/view_vehicle.dart';
import 'package:test1/shared/app_bar.dart';

import '../../../core/failures/failures.dart';

class ViewMapPage extends StatefulWidget {
  const ViewMapPage({super.key});

  @override
  State<ViewMapPage> createState() => _ViewMapPageState();
}

class _ViewMapPageState extends State<ViewMapPage> {
  static const LatLng center = LatLng(33.7715, 72.7511);

  GoogleMapController? controller;
  BitmapDescriptor? bitmapDescriptor;
  addCustomMarker() async {}

  MarkerId? selectedMarker;
  int _markerIdCounter = 1;
  LatLng? markerPosition;
  BitmapDescriptor? icon;
  // ignore: use_setters_to_change_properties
  void _onMapCreated(GoogleMapController controller) {
    this.controller = controller;
  }

  BitmapDescriptor? customMarkerIcon;
  Future<void> loadMarkerIcon() async {
    BitmapDescriptor.fromAssetImage(
      ImageConfiguration(devicePixelRatio: 0.5),
      'assets/location.png',
    ).then((icon) {
      setState(() {
        customMarkerIcon = icon;
      });
    });
  }

  @override
  void initState() {
    // getIcons();
    loadMarkerIcon();

    super.initState();
  }

  // void _onMarkerTapped(MarkerId markerId) {
  //   final Marker? tappedMarker = markers[markerId];
  //   if (tappedMarker != null) {
  //     setState(() {
  //       final MarkerId? previousMarkerId = selectedMarker;
  //       if (previousMarkerId != null && markers.containsKey(previousMarkerId)) {
  //         final Marker resetOld = markers[previousMarkerId]!
  //             .copyWith(iconParam: BitmapDescriptor.defaultMarker);
  //         markers[previousMarkerId] = resetOld;
  //       }
  //       selectedMarker = markerId;
  //       final Marker newMarker = tappedMarker.copyWith(
  //         iconParam: BitmapDescriptor.defaultMarkerWithHue(
  //           BitmapDescriptor.hueGreen,
  //         ),
  //       );
  //       markers[markerId] = newMarker;

  //       markerPosition = null;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Ekar"),
      ),
      body: GoogleMap(
          mapType: MapType.terrain,
          myLocationEnabled: true,
          zoomGesturesEnabled: true,
          myLocationButtonEnabled: true,
          onMapCreated: _onMapCreated,
          initialCameraPosition: const CameraPosition(
            target: center,
            zoom: 17.0,
          ),
          markers: {
            Marker(
                markerId: const MarkerId("wah cantt"),
                position: center,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ViewVehicle()));
                },
                infoWindow: InfoWindow(title: "wah cantt"),
                icon: customMarkerIcon == null
                    ? BitmapDescriptor.defaultMarker
                    : customMarkerIcon!)
          }),
    );
  }
}

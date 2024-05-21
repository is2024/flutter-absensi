import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/core.dart';

class LocationPage extends StatefulWidget {
  final double? latitude;
  final double? longitude;
  const LocationPage({
    super.key,
    this.latitude,
    this.longitude,
  });

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    LatLng center = LatLng(widget.latitude ?? 0, widget.longitude ?? 0);
    Marker marker = Marker(
      markerId: const MarkerId("marker_1"),
      position: LatLng(widget.latitude ?? 0, widget.longitude ?? 0),
    );
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: widget.latitude == null
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primary,
                    ),
                  )
                : GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: center,
                      zoom: 18.0,
                    ),
                    markers: {marker},
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 50.0,
            ),
            child: GestureDetector(
              onTap: () => context.pop(),
              child: Assets.icons.back.svg(),
            ),
          ),
        ],
      ),
    );
  }
}

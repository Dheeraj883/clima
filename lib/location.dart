import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double currentLatitude;
  double currentLongitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );
      currentLongitude = position.longitude;
      currentLatitude = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}

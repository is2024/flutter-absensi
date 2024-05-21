import 'dart:convert';

class CheckInOutRequestModel {
    final String? latitude;
    final String? longitude;

    CheckInOutRequestModel({
        this.latitude,
        this.longitude,
    });

    factory CheckInOutRequestModel.fromJson(String str) => CheckInOutRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CheckInOutRequestModel.fromMap(Map<String, dynamic> json) => CheckInOutRequestModel(
        latitude: json["latitude"],
        longitude: json["longitude"],
    );

    Map<String, dynamic> toMap() => {
        "latitude": latitude,
        "longitude": longitude,
    };
}

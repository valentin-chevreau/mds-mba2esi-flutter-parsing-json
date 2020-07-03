class GeoModel {
  String lat;
  String lng;

  GeoModel(this.lat, this.lng);

  factory GeoModel.fromJson(Map<String, dynamic> json) {
    return GeoModel(json['lat'], json['lng']);
  }

  @override
  String toString() {
    return 'gioModel{lat: $lat, lng: $lng}';
  }
}

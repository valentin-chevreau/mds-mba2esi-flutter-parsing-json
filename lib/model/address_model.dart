import 'geo_model.dart';

class AddressModel {
  String street;
  String suite;
  String city;
  String zipcode;
  GeoModel geo;

  AddressModel(this.street, this.suite, this.city, this.zipcode, this.geo);

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(json['street'], json['suite'], json['city'],
        json['zipcode'], GeoModel.fromJson(json['geo']));
  }

  @override
  String toString() {
    return 'AddressModel{street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo}';
  }
}

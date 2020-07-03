import 'package:json_parsing_demo/model/address_model.dart';
import 'package:json_parsing_demo/model/company_model.dart';

class UserModel {
  int id;
  String name;
  String username;
  String email;
  AddressModel address;
  String phone;
  String website;
  CompanyModel company;

  UserModel(this.id, this.name, this.username, this.email, this.address,
      this.phone, this.website, this.company);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      json['id'],
      json['name'],
      json['username'],
      json['email'],
      AddressModel.fromJson(json['address']),
      json['phone'],
      json['website'],
      CompanyModel.fromJson(json['company']),
    );
  }

  @override
  String toString() {
    return 'UserModel{id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company}';
  }
}

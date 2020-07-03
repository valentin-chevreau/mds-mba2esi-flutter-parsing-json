import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_parsing_demo/model/user_model.dart';

class RestService {
  static final String userURL = 'https://jsonplaceholder.typicode.com/users';

  static Future<UserModel> getUser(int id) async {
    var url = userURL + '/$id';
    var response = await http.get(url);

    Map<String, dynamic> json = jsonDecode(response.body);

    return UserModel.fromJson(json);
  }

  static Future<List<UserModel>> getUserList() async {
    print('RestService - getUserList');

    var response = await http.get(userURL);

    List<dynamic> jsonList = jsonDecode(response.body);

    List<UserModel> users = jsonList.map((e) => UserModel.fromJson(e)).toList();

    return users;
  }
}

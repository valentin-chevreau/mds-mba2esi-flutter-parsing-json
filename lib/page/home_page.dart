import 'package:flutter/material.dart';
import 'package:json_parsing_demo/model/user_model.dart';
import 'package:json_parsing_demo/page/home/widget/user_widget.dart';
import 'package:json_parsing_demo/service/rest_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserModel> _users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contact list'),
      ),
      body: FutureBuilder(
        future: RestService.getUserList(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Center(child: CircularProgressIndicator());
          }

          List<UserModel> users = snapshot.data;

          return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return UserWidget(users[index]);
              });
        },
      ),
    );
  }
}

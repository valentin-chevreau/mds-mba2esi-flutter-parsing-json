import 'package:flutter/material.dart';
import 'package:json_parsing_demo/model/user_model.dart';

class UserWidget extends StatelessWidget {
  final UserModel _userModel;

  UserWidget(this._userModel);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.person),
                        ),
                      ),
                    ],
                  ),
                  Container(width: 12.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${_userModel.name}',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '${_userModel.email}',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black45,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '#${_userModel.id}',
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black45,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              Container(height: 16.0),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.business,
                      size: 16.0,
                      color: Colors.blue,
                    ),
                  ),
                  Container(width: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${_userModel.company.name}',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black45,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '\"${_userModel.company.catchPhrase}\"',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        '\"${_userModel.company.bs}\"',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ],
              ),
              Container(height: 16.0),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.near_me,
                      size: 16.0,
                      color: Colors.blue,
                    ),
                  ),
                  Container(width: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${_userModel.address.street}',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black45,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '${_userModel.address.zipcode}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        '${_userModel.address.city}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ],
              ),
              Container(height: 16.0),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.phone_android,
                      size: 16.0,
                      color: Colors.blue,
                    ),
                  ),
                  Container(width: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${_userModel.phone}',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black45,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '${_userModel.email}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            height: 1,
            color: Colors.grey.withOpacity(0.2),
          ),
        )
      ],
    );
  }
}

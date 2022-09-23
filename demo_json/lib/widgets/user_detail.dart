import 'package:flutter/material.dart';

import '../model/user_model.dart';

class UserDetail extends StatelessWidget {
  static String routeName = '/userdetail';
  late final String? name;
  late final String username;
  late final String email;
  late final String city;

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as User;
    name = arguments.name;
    username = arguments.username;
    email = arguments.email;
    city = arguments.address.city;

    print(arguments);
    return Scaffold(
      appBar: AppBar(
        title: Text('${name}'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(10),
        width: 300,
        height: 300,
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: Colors.amber)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${name}'),
            Text('${username}'),
            Text('${email}'),
            Text('city: ${city}'),
          ],
        ),
      ),
    );
  }
}

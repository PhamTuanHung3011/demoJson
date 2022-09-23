import 'package:demo_json/widgets/user_detail.dart';
import 'package:flutter/material.dart';

import '../model/user_model.dart';

class UserWidget extends StatelessWidget {
  late List<User> users;
  UserWidget(this.users);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.amber)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(users[index].name),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, UserDetail.routeName,
                      arguments: users[index]);
                },
                child: Text('Detail'),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

import '../models/user.dart';
import '../home/components/my_text_avatar.dart';

class UserDetailsPage extends StatelessWidget {
  final User user;

  const UserDetailsPage({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: user.id,
              child: MyTextAvatar(
                text: user.name,
                radius: 30.0,
              ),
            ),
            SizedBox(height: 15),
            Text(
              user.name,
              style: Theme.of(context).textTheme.title,
            ),
            SizedBox(height: 5),
            Text(
              user.email,
              style: Theme.of(context).textTheme.subtitle,
            )
          ],
        ),
      ),
    );
  }
}

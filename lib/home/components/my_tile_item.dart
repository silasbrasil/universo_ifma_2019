import 'package:flutter/material.dart';

import '../../models/user.dart';
import '../../user_details/user_details_page.dart';
import '../components/my_text_avatar.dart';

class MyTileItem extends StatelessWidget {
  final User user;

  const MyTileItem({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.name),
      subtitle: Text(user.email),
      leading: Hero(
        tag: user.id,
        child: MyTextAvatar(text: user.name),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserDetailsPage(user: user)),
        );
      },
    );
  }
}

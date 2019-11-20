import 'package:flutter/material.dart';

class MyTextAvatar extends StatelessWidget {
  final String text;
  final double radius;

  const MyTextAvatar({
    Key key,
    this.text,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Theme.of(context).accentColor,
      child: _textAvatar(text),
    );
  }

  Widget _textAvatar(String name) {
    final style = TextStyle(fontWeight: FontWeight.bold);

    if (name == null) return Text('AN', style: style);

    if (name.isEmpty) return Text('AN', style: style);

    if (name.length == 1) return Text(name.toUpperCase(), style: style);

    return Text(name.substring(0, 2).toUpperCase(), style: style);
  }
}

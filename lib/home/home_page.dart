import 'package:flutter/material.dart';

import 'home_repository.dart';
import '../models/user.dart';
import './components/my_tile_item.dart';

class HomePage extends StatelessWidget {
  final _homeRepo = HomeRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IFMA App'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              print('FFF');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://semantic-ui.com/images/avatar2/large/elyse.png'),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: FutureBuilder<List<User>>(
          future: _homeRepo.getUsers(),
          builder: _futureBuilder,
        ),
      ),
    );
  }

  Widget _futureBuilder(context, snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
      final list = snapshot.data as List;

      return ListView.separated(
        itemCount: list.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return MyTileItem(user: list[index]);
        },
      );
    } else {
      return CircularProgressIndicator();
    }
  }
}

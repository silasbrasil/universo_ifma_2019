import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/user.dart';

class HomeRepository {
  Future<List<User>> getUsers() {
    return http
        .get('https://jsonplaceholder.typicode.com/users')
        .then((response) => jsonDecode(response.body))
        .then((json) => _parseUsers(json as List));
  }

  List<User> _parseUsers(List<dynamic> list) {
    return list.map((user) => User.fromJson(user)).toList();
  }
}

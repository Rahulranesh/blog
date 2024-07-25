import 'package:blogging/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(id: '', name: '', email: '', token: '', password: '');
  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }

  void setUserModel(User user) {
    _user = user;
    notifyListeners();
  }
}

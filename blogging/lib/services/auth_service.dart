import 'dart:ui';

import 'package:blogging/models/user.dart';
import 'package:blogging/utils/constants.dart';
import 'package:blogging/utils/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;

class AuthService {
  void registerUser({
    required BuildContext context,
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      User user =
          User(id: '', name: name, email: email, token: '', password: password);

      http.Response res = await http.post(
        Uri.parse('${Constants.uri}/api/registerUser'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8',
        },
      );
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(
                context, 'Account created ! Login with the same credential');
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}

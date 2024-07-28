// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class MyTextField extends StatelessWidget {
  TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: -4,
        lightSource: LightSource.topLeft,

        //color: Colors.grey
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
          contentPadding: EdgeInsets.only(
            left: 10,
          ),
        ),
        obscureText: obscureText,
      ),
    );
  }
}

import 'package:blogging/components/my_button.dart';
import 'package:blogging/components/my_textfield.dart';
import 'package:blogging/pages/home_page.dart';
import 'package:blogging/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final AuthService authService = AuthService();

  void registerUser() {
    authService.registerUser(
        context: context,
        email: emailController.text,
        name: nameController.text,
        password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text(
          'R E G I S T E R',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Icon(
              Icons.app_registration_rounded,
              size: 40,
            ),
            SizedBox(
              height: 20,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.circle(),
                depth: 8,
                lightSource: LightSource.topLeft,
              ),
              child: Container(
                width: 100,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                    ),
                    Text(
                      'Upload \n Photo',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            MyTextField(
              controller: nameController,
              hintText: ' Enter a name',
              obscureText: false,
            ),
            SizedBox(
              height: 30,
            ),
            MyTextField(
              controller: emailController,
              hintText: 'Enter a email',
              obscureText: false,
            ),
            SizedBox(
              height: 30,
            ),
            MyTextField(
              controller: passwordController,
              hintText: 'Enter a password',
              obscureText: true,
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(onPressed: registerUser, text: 'Register'),
          ],
        ),
      ),
    );
  }
}

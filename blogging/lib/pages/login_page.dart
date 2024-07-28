import 'package:blogging/components/my_button.dart';
import 'package:blogging/components/my_textfield.dart';
import 'package:blogging/pages/home_page.dart';
import 'package:blogging/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text(
          'L O G I N',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary),
        ),
        leading: Icon(
          Icons.newspaper,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Icon(
              Icons.article_rounded,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(
              height: 40,
            ),
            MyTextField(
              controller: emailController,
              hintText: 'Enter Email',
              obscureText: false,
            ),
            SizedBox(
              height: 30,
            ),
            MyTextField(
              controller: passwordController,
              hintText: 'Enter Password',
              obscureText: true,
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              text: 'Login',
            ),
            SizedBox(
              height: 30,
            ),
            NeumorphicButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                );
              },
              child: Container(
                width: 140,
                height: 30,
                child: Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ),
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 8,
                lightSource: LightSource.topLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

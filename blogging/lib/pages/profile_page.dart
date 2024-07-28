import "package:blogging/components/my_textfield.dart";
import "package:flutter/material.dart";
import "package:flutter_neumorphic_plus/flutter_neumorphic.dart";

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  final TextEditingController namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            MyTextField(
                controller: namecontroller,
                hintText: 'Enter your name',
                obscureText: false),
            SizedBox(
              height: 20,
            ),
            MyTextField(
                controller: namecontroller,
                hintText: 'profession',
                obscureText: false),
            SizedBox(
              height: 20,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: -4,
                lightSource: LightSource.topLeft,
                //color: Colors.grey
              ),
              child: DropdownButtonFormField<int>(
                iconEnabledColor: Theme.of(context).colorScheme.secondary,
                onChanged: (i) {},
                items: [
                  DropdownMenuItem(
                    child: Text(
                      "Male",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    value: 1,
                  )
                ],
                decoration: InputDecoration(
                  hintText: 'Select Gender',
                  hintStyle:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                  contentPadding: EdgeInsets.only(
                    left: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

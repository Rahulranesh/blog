import 'package:blogging/components/drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: NeumorphicAppBar(
        title: Text(
          'B L O G ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Builder(builder: (context) {
          return NeumorphicButton(
            child: Icon(Icons.person_2),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        actions: [
          NeumorphicButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, '/uploadpostpage');
            },
          ),
        ],
      ),

      // C O N T I N U E    H E R E   S I R I K A
      body: Column(
        children: [],
      ),
    );
  }
}

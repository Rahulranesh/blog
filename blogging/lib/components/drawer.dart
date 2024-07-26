import "package:blogging/pages/login_page.dart";
import "package:blogging/pages/setting_page.dart";

import "package:flutter/material.dart";

class DrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: padding,
          children: <Widget>[
            DrawerHeader(
                child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Theme.of(context).colorScheme.inversePrimary),
                )
              ],
            )),
            SizedBox(
              height: 48,
            ),
            buildMenuItem(
              text: 'Your blogs',
              icon: Icons.article,
              color: Theme.of(context).colorScheme.inversePrimary,
              hovercolor: Theme.of(context).colorScheme.secondary,
              onClicked: () => selectedItem(context, 0),
            ),
            SizedBox(height: 16),
            buildMenuItem(
              text: 'Settings',
              icon: Icons.settings,
              color: Theme.of(context).colorScheme.inversePrimary,
              hovercolor: Theme.of(context).colorScheme.secondary,
              onClicked: () => selectedItem(context, 1),
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Logoout',
              icon: Icons.logout,
              color: Theme.of(context).colorScheme.inversePrimary,
              hovercolor: Theme.of(context).colorScheme.secondary,
              onClicked: () => selectedItem(context, 2),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required Color color,
    required Color hovercolor,
    VoidCallback? onClicked,
  }) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hovercolor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Settings(),
        ));
        break;

      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LoginPage(),
        ));
        break;
    }
  }
}

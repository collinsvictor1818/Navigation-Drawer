import 'package:flutter/material.dart';
import 'Widget/Admin_Page.dart';
import 'Widget/Common_Items_Page.dart';
import 'Widget/Setup_Page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 10);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.green,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 80),
            buildMenuItem(
                text: 'Dashboard',
                icon: Icons.dashboard,
                onClicked: () => selectedItem(context, 3)),
            const SizedBox(height: 8),
            buildMenuItem(
              text: 'Common Items',
              icon: Icons.menu_open,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 8),
            buildMenuItem(
              text: 'Admin',
              icon: Icons.admin_panel_settings,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 8),
            buildMenuItem(
              text: 'Setup',
              icon: Icons.settings_sharp,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 8),
            Divider(color: Colors.white70),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.redAccent;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );    
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop(); //Closes menu once option clicked

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Common_Items(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Admin(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Setup(),
        ));
        break;
    }
  }
}
  
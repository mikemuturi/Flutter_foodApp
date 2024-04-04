import 'package:flutter/material.dart';
import 'package:food_app/components/my_drawer_tile.dart';
import 'package:food_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // App logo
          Padding(
            padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Colors.grey.shade700,
            ),
          ),
          Divider(),
          // Home list tile
          MyDrawerTile(
            text: "HOME",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          // Settings list tile
          MyDrawerTile(
            text: "SETTINGS",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SettingsPage() ));
            },
          ),
          Spacer(),
          // Logout list tile
          MyDrawerTile(
            text: "LOGOUT",
            icon: Icons.logout,
            onTap: () {},
          ),
          // Add a SizedBox to provide spacing at the bottom
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}

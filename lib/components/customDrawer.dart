import 'package:flutter/material.dart';
import 'customTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 35, left: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hello User',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 35),
          CustomTile(text: 'Home', icon: Icons.home),
          CustomTile(text: 'Profile', icon: Icons.person),
          CustomTile(text: 'Settings', icon: Icons.settings),
          Spacer(),
          CustomTile(text: 'Logout', icon: Icons.logout),
        ],
      ),
    );
  }
}
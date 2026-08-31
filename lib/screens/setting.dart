// ignore: unused_import
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3D2CBD),
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        children: [
          // Profile Section
          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text(
              "My Account",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Manage your account"),
          ),

          const Divider(),

          // Notifications
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Notifications"),
            subtitle: const Text("Manage notifications"),
          ),

          // Dark Mode
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: const Text("Dark Mode"),
            subtitle: const Text("Change app appearance"),
          ),

          // Language
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text("Language"),
            subtitle: const Text("English"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),

          // Privacy
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text("Privacy"),
            subtitle: const Text("Manage your privacy"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),

          // About
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text("About App"),
            subtitle: const Text("Todo App v1.0"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

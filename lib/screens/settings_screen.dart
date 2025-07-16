import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  void _logout(BuildContext context) {
    // Perform logout logic if needed (e.g., clear token/storage)
    Navigator.pushNamedAndRemoveUntil(
      context,
      '/login',     // Go to login screen
      (route) => false, // Remove all previous routes
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: () => _logout(context),
        icon: const Icon(Icons.logout),
        label: const Text("Logout"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
        ),
      ),
    );
  }
}

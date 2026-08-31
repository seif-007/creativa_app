import 'package:flutter/material.dart';

/// Screen 7: Settings — Dark Mode (demo only) + Notifications toggles.
/// These are local-only for now; wire them into a real theme/prefs
/// system as a next step (see README).
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkMode = false;
  bool _notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.nightlight_round),
            title: const Text('Dark Mode'),
            subtitle: const Text('Enable dark theme (demo only)'),
            value: _darkMode,
            onChanged: (v) => setState(() => _darkMode = v),
          ),
          const Divider(height: 1),
          SwitchListTile(
            secondary: const Icon(Icons.notifications_none),
            title: const Text('Notifications'),
            subtitle: const Text('Receive updates from the training center'),
            value: _notifications,
            onChanged: (v) => setState(() => _notifications = v),
          ),
        ],
      ),
    );
  }
}
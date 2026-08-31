import 'package:flutter/material.dart';

/// Screen 6: About — static informational page, pushed from the drawer.
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          children: [
            Container(
              width: 90,
              height: 90,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF3F51B5),
              ),
              child: const Icon(Icons.school, color: Colors.white, size: 42),
            ),
            const SizedBox(height: 20),
            const Text('Creativa App',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text('Learn Flutter step by step.',
                style: TextStyle(color: Colors.grey.shade600)),
            const SizedBox(height: 20),
            Text(
              'Creativa App is a place where beginners learn the fundamentals '
              'of mobile app development using Flutter and Dart. Our courses '
              'are designed to be simple, practical, and easy to follow, '
              'helping students build real projects from day one while '
              'learning core concepts such as widgets, navigation, state '
              'management, and clean project structure.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade700, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
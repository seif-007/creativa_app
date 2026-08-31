import 'package:creativa_app/items/Student.dart';
import 'package:creativa_app/items/drawer.dart';
import 'package:creativa_app/screens/coursespage.dart';
import 'package:creativa_app/screens/homapage.dart';
import 'package:creativa_app/screens/profilepage.dart';
import 'package:flutter/material.dart';


/// Screen 2 (host): wraps Home / Courses / Profile in a bottom nav bar,
/// and provides the shared AppBar + Drawer for all three tabs.
class MainScreen extends StatefulWidget {
  final Student student;
  final bool showWelcomeSnack;

  const MainScreen({
    super.key,
    required this.student,
    this.showWelcomeSnack = false,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    if (widget.showWelcomeSnack) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Registration successful!'),
            backgroundColor: Colors.green,
          ),
        );
      });
    }
  }

  void _goToTab(int index) => setState(() => _currentIndex = index);

  @override
  Widget build(BuildContext context) {
    final tabs = [
      HomeScreen(student: widget.student),
      const CoursesScreen(),
      ProfileScreen(student: widget.student),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Creativa App')),
      drawer: AppDrawer(student: widget.student, onSelectTab: _goToTab),
      body: IndexedStack(index: _currentIndex, children: tabs),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _goToTab,
        selectedItemColor: const Color(0xFF3F51B5),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
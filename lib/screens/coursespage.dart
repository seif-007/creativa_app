import 'package:flutter/material.dart';

class _Course {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const _Course(this.title, this.description, this.icon, this.color);
}

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  static const _courses = [
    _Course('Flutter Basics', 'Learn the fundamentals of building apps with Flutter.',
        Icons.smartphone, Color(0xFF3F51B5)),
    _Course('Dart Programming', 'Understand the Dart language that powers Flutter.',
        Icons.code, Color(0xFF3F51B5)),
    _Course('UI/UX Fundamentals', 'Learn how to design clean and user-friendly interfaces.',
        Icons.brush, Color(0xFF3F51B5)),
    _Course('Git & GitHub', 'Learn version control and how to collaborate on code.',
        Icons.hub, Color(0xFF3F51B5)),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: _courses.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final course = _courses[index];
        return Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: course.color,
                child: Icon(course.icon, color: Colors.white, size: 20),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(course.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                    const SizedBox(height: 4),
                    Text(course.description,
                        style: TextStyle(color: Colors.grey.shade600, fontSize: 13)),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
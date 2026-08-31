/// Simple model representing the registered student.
/// Kept intentionally minimal (no backend) — perfect starting point
/// to later replace with a real API/DB model.
class Student {
  final String name;
  final String studentId;

  const Student({required this.name, required this.studentId});
}
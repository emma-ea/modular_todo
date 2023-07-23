class Todos {
  final String title;
  final String todo;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final bool completed;

  const Todos(
      {required this.title,
      required this.todo,
      this.createdAt,
      this.updatedAt,
      this.completed = false});
}

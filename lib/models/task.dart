class Task {
  final String title;
  final bool done;
  final String description;
  final DateTime createDate;
  final DateTime modifiedDate;

  Task(
      {required this.title,
      required this.description,
      required this.createDate,
      required this.done,
      required this.modifiedDate});
}

List<Task> demoTask = [];

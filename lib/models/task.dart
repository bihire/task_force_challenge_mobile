class Task {
  final String title;
  final bool done;
  final String description;
  final DateTime createDate;
  final DateTime modifiedDate;

  Task({this.title, this.description, this.createDate,this.done, this.modifiedDate});
}

List<Task> demoTask = [];

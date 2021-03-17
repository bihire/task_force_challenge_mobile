import 'package:meta/meta.dart';
import 'package:task_force_challenge/models/task.dart';

@immutable
class TaskState {
  TaskState({
    required this.loading,
    this.error,
    required this.task,
  });
  final bool loading;
  final List<Task> task;
  Exception? error = null;

  factory TaskState.initial() => TaskState(
    loading: false,
    task: const []
  );

  TaskState copyWith({
    loading,
    task,
    error
  }) {
    return TaskState(
      loading: loading ?? this.loading,
      task: task ?? this.task,
      error: error ?? this.error
    );
  }

  @override
  String toString() {
    return "$task";
  }
}
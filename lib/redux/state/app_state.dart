import 'package:meta/meta.dart';
import './add_task.dart';

// import 'number_slide_position.dart';

@immutable
class AppState {
  final TaskState taskState;

  AppState({
    required this.taskState,
  });

  factory AppState.initial() {
    return AppState(
      taskState: TaskState.initial(),
    );
  }

  AppState copyWith({TaskState? taskState = null}) {
    return AppState(
      taskState: taskState ?? this.taskState,
    );
  }
}

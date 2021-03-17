
import 'package:redux/redux.dart';
import 'package:task_force_challenge/models/task.dart';
import 'package:task_force_challenge/redux/actions/add_task.dart';
import 'package:task_force_challenge/redux/state/add_task.dart';

TaskState allTasksReducer(TaskState state, action) {
  return state.copyWith(
    loading: _isDataLoadingReducer(state.loading, action),
    task: _tasksReducer(state.task, action),
    error: _errorReducer(state.error, action),
  );
}

final Reducer<bool> _isDataLoadingReducer = combineReducers<bool>([
  TypedReducer<bool, LoadTasksAction>(_isDataLoadingStartedReducer),
  TypedReducer<bool, TasksLoadedAction>(
      _isDataLoadingFinishedReducer),
  TypedReducer<bool, ErrorOccurredAction>(_isDataLoadingFinishedReducer),
]);

bool _isDataLoadingStartedReducer(bool _, dynamic action) {
  return true;
}

bool _isDataLoadingFinishedReducer(bool _, dynamic action) {
  return false;
}

// bool _isNextPageAvailableReducer(bool isNextPageAvailable, dynamic action) {

//   return (action is TasksLoadedAction)
//       ? action.tasks.length == TaskState.transactionsPerPage
//       : isNextPageAvailable;
// }

List<Task> _tasksReducer(
    List<Task> tasks, dynamic action) {
  if (action is TasksLoadedAction) {
    return List.from(tasks)..addAll(action.tasks);
  } else if (action is LoadTasksAction) {
    return [];
  } else {
    return tasks;
  }
}

final Reducer<Exception> _errorReducer = combineReducers<Exception>([
  TypedReducer<Exception, ErrorOccurredAction>(_errorOccurredReducer),
  TypedReducer<Exception, ErrorHandledAction>(_errorHandledReducer),
]);

Exception _errorOccurredReducer(Exception _, ErrorOccurredAction action) {
  return action.exception;
}

Exception? _errorHandledReducer(Exception _, ErrorHandledAction action) {
  return null;
}

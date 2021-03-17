

import 'package:task_force_challenge/redux/reducers/task_reducer.dart';
import 'package:task_force_challenge/redux/state/app_state.dart';

AppState appReducer(AppState state, dynamic action) =>
    new AppState(
        taskState: allTasksReducer(state.taskState, action),
    );
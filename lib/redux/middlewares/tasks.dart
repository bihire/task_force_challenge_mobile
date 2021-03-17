import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:redux/redux.dart';
import 'package:task_force_challenge/models/task.dart';
import 'package:task_force_challenge/redux/actions/add_task.dart';
import 'package:task_force_challenge/redux/state/app_state.dart';

Middleware<AppState> createAllTransactionsMiddleware() {
  return TypedMiddleware<AppState, LoadTasksPageAction>(
          _loadItemsPage());
  }
  
  class LoadTasksPageAction {
}

_loadItemsPage() {
  return (Store<AppState> store, LoadTasksPageAction action,
      NextDispatcher next) {
    next(action);

    _loadFlutterGithubIssues()
        .then(
      (itemsPage) {
        store.dispatch(TasksLoadedAction(itemsPage));
      },
    ).catchError((exception, stacktrace) {
      store.dispatch(ErrorOccurredAction(exception));
    });
  };
}

Future<List<Task>> _loadFlutterGithubIssues() async {
  var response = await http.get(
      'http://192.168.137.97:5000/api/transactions?page=$page&numberOfRows=$perPage');
  if (response.statusCode == 200) {
    final jsonData = (json.decode(response.body))['data'] as List;
    return  jsonData.map((item) => MoneyTransactionModel.fromJson(item)).toList();
  } else {
    throw Exception('Error getting data, http code: ${response.statusCode}.');
  }
}

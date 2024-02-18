import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_reminder_app/models/daily_todo.dart';

class TodosNotifier extends StateNotifier<List<DailyTodo>> {
  TodosNotifier() : super([]);

  void add(DailyTodo todo) {
    state = [...state, todo];
  }

  void remove(String todoId) {
    state = [
      for (final todo in state)
        if (todo.id != todoId) todo,
    ];
  }

  void toggle(String todoId) {
    state = [
     ...state, state.firstWhere((element) => element.id == todoId)
    ];
  }
}

final todosProvider = StateNotifierProvider<TodosNotifier, List<DailyTodo>>(
  (ref) => TodosNotifier(),
);

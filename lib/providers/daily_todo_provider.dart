import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_reminder_app/models/daily_todo.dart';

class TodosNotifier extends StateNotifier<List<DailyTodo>> {
  TodosNotifier()
      : super([
          DailyTodo(
              content: "Go cook", done: false, id: UniqueKey().toString()),
          DailyTodo(content: "Eat breakfest", id: UniqueKey().toString()),
          DailyTodo(content: "Do homework", id: UniqueKey().toString()),
          DailyTodo(content: "Buy food", id: UniqueKey().toString()),
        ]);

  void add(DailyTodo todo) {
    state = [...state, todo];
  }

  void remove(String todoId) {
    state = [
      for (final todo in state)
        if (todo.id != todoId) todo,
    ];
  }

  void toggle(String todoId, bool val) {
    state = [
      for (final todo in state)
        if (todo.id == todoId) todo.copyWith(done: val) else todo,
    ];
  }
}

final todosProvider = StateNotifierProvider<TodosNotifier, List<DailyTodo>>(
  (ref) => TodosNotifier(),
);

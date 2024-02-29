import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_reminder_app/models/daily_todo.dart';

class TodosNotifier extends StateNotifier<List<DailyTodo>> {
  Timer? _timer;
  String? currentTimerId;
  bool isTimerRunning = false;

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

  void startTimeCount(String todoId) {
    if (isTimerRunning && currentTimerId == todoId) {
      return;
    }

    currentTimerId = todoId;
    isTimerRunning = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      state = [
        for (final todo in state)
          if (todo.id == todoId) todo.increasedBySecond() else todo,
      ];
    });
  }

  void pauseTimeCount() {
    if (_timer != null) {
      _timer!.cancel();
      isTimerRunning = false;
      currentTimerId = null;
    }
  }
}

final todosProvider = StateNotifierProvider<TodosNotifier, List<DailyTodo>>(
  (ref) => TodosNotifier(),
);

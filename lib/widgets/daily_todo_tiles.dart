import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_reminder_app/models/daily_todo.dart';
import 'package:todo_reminder_app/providers/daily_todo_provider.dart';
import 'package:todo_reminder_app/widgets/daily_todo_tile.dart';

class DailyTodoTiles extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void toggleTodo(String id, bool val) {
      ref.read(todosProvider.notifier).toggle(id, val);
    }

    final todos = ref.watch(todosProvider);

    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return DailyTodoTile(
          todo: todos[index],
          toggleTodo: toggleTodo,
        );
      },
    );
  }
}

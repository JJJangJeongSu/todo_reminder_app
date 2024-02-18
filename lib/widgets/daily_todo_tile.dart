import 'package:flutter/material.dart';
import 'package:todo_reminder_app/models/daily_todo.dart';

class DailyTodoTile extends StatelessWidget {
  DailyTodoTile({required this.todo, required this.toggleTodo});

  void Function(String id, bool val) toggleTodo;

  DailyTodo todo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CheckboxListTile(
        title: Text(todo.content),
        onChanged: (value) {
          toggleTodo(todo.id, value!);
        },
        value: todo.done,
      ),
    );
  }
}

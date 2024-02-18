import 'package:flutter/material.dart';
import 'package:todo_reminder_app/models/daily_todo.dart';

class DailyTodoTile extends StatefulWidget {
  DailyTodoTile({required this.todo});

  DailyTodo todo;
  @override
  State<StatefulWidget> createState() {
    return _DailyTodoTileState();
  }
}

class _DailyTodoTileState extends State<DailyTodoTile> {
  @override
  Widget build(BuildContext context) {
    final todo = widget.todo;

    return CheckboxListTile(
      title: Text(todo.content),
      onChanged: (value) {},
      value: todo.done,
    );
  }
}

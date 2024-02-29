import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:todo_reminder_app/models/daily_todo.dart';
import 'package:todo_reminder_app/screens/daily_todo_focus_screen.dart';

class DailyTodoTile extends StatelessWidget {
  DailyTodoTile({required this.todo, required this.toggleTodo});

  void Function(String id, bool val) toggleTodo;

  DailyTodo todo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            PageTransition(
              child: DailyTodoFocusedScreen(
                todo: todo,
              ),
              type: PageTransitionType.bottomToTop,
            ),
          );
        },
        child: ListTile(
          title: Text(todo.content),
          trailing: Checkbox(
              value: todo.done,
              onChanged: (value) {
                toggleTodo(todo.id, value!);
              }),
        ));
  }
}

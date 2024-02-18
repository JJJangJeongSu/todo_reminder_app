import 'package:flutter/material.dart';
import 'package:todo_reminder_app/data/dummy_data.dart';
import 'package:todo_reminder_app/widgets/daily_text_field.dart';
import 'package:todo_reminder_app/widgets/daily_todo_tile.dart';

class DailyPlanner extends StatefulWidget {
  @override
  State<DailyPlanner> createState() {
    return _DailyPlannerState();
  }
}

class _DailyPlannerState extends State<DailyPlanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: myTodos.length,
        itemBuilder: (context, index) {
          return DailyTodoTile(todo: myTodos[index]);
        },
      ),
      bottomNavigationBar: DailyTextField(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_reminder_app/models/daily_todo.dart';

final todos = [
  DailyTodo(content: "Go cook", done: false, id: UniqueKey().toString()),
  DailyTodo(content: "Eat breakfest", id: UniqueKey().toString()),
  DailyTodo(content: "Do homework", id: UniqueKey().toString()),
  DailyTodo(content: "Buy food", id: UniqueKey().toString()),
];

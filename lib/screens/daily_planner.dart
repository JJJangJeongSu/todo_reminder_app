import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_reminder_app/data/dummy_data.dart';
import 'package:todo_reminder_app/providers/daily_todo_provider.dart';
import 'package:todo_reminder_app/widgets/daily_text_field.dart';
import 'package:todo_reminder_app/widgets/daily_todo_tile.dart';
import 'package:todo_reminder_app/widgets/daily_todo_tiles.dart';

class DailyPlanner extends ConsumerStatefulWidget {
  @override
  ConsumerState<DailyPlanner> createState() {
    return _DailyPlannerState();
  }
}

class _DailyPlannerState extends ConsumerState<DailyPlanner> {
  void toggleTodo(String id, bool val) {
    ref.read(todosProvider.notifier).toggle(id, val);
  }

  @override
  Widget build(BuildContext context) {
    final todos = ref.watch(todosProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text("Daily Planner"),
        ),
        body: Stack(
          children: [
            DailyTodoTiles(),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: DailyTextField(),
            )
          ],
        ));
  }
}

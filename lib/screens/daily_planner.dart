import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_reminder_app/providers/daily_todo_provider.dart';
import 'package:todo_reminder_app/widgets/daily_todo/adder_dialog.dart';
import 'package:todo_reminder_app/widgets/planner_navigation_bar.dart';
import 'package:todo_reminder_app/widgets/daily_todo/daily_text_field.dart';
import 'package:todo_reminder_app/widgets/daily_todo/daily_todo_tiles.dart';
import 'package:todo_reminder_app/widgets/daily_todo/daily_total.dart';

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
    // final todos = ref.watch(todosProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.chevron_left_sharp)),
        title: const Text(
          "Daily Planner",
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.chevron_right_sharp)),
        ],
      ),
      body: Column(
        children: [
          DailyTotal(),
          Expanded(child: DailyTodoTiles()),
        ],
      ),
      bottomNavigationBar: PlannerNavigationBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AdderDialog();
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

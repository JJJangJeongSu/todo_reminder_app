import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_reminder_app/models/daily_todo.dart';
import 'package:todo_reminder_app/providers/daily_todo_provider.dart';

class DailyTextField extends ConsumerWidget {
  DailyTextField({
    super.key,
  });

  final newTodoItemController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: newTodoItemController,
        decoration: InputDecoration(
          hintText: "Add your Todo!",
          filled: true,
          fillColor: Colors.blue,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          isDense: true,
          suffixIcon: IconButton(
            onPressed: () {
              if (newTodoItemController.text.trim().isEmpty) {
                return;
              }
              ref.read(todosProvider.notifier).add(
                    DailyTodo(
                      content: newTodoItemController.text,
                      id: UniqueKey().toString(),
                    ),
                  );
            },
            icon: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

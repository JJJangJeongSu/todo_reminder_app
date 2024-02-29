import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_reminder_app/models/daily_todo.dart';
import 'package:todo_reminder_app/providers/daily_todo_provider.dart';

class AdderDialog extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  String? todoContent;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        height: 150,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text("Add a Todo"),
              TextFormField(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Fill out the field";
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  todoContent = newValue;
                },
              ),
              Expanded(
                child: Row(children: [
                  TextButton(
                      onPressed: () {
                        _formKey.currentState!.reset();

                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel")),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          ref.watch(todosProvider.notifier).add(
                                DailyTodo(
                                  content: todoContent!,
                                  id: UniqueKey().toString(),
                                ),
                              );
                          Navigator.of(context).pop();
                        }
                      },
                      child: Text("Add"))
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

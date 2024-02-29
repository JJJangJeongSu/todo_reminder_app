import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_reminder_app/models/daily_todo.dart';
import 'package:todo_reminder_app/providers/daily_todo_provider.dart';

class DailyTodoFocusedScreen extends ConsumerStatefulWidget {
  DailyTodoFocusedScreen({required this.todo});

  DailyTodo todo;

  @override
  ConsumerState<DailyTodoFocusedScreen> createState() =>
      _DailyTodoFocusedScreenState();
}

class _DailyTodoFocusedScreenState
    extends ConsumerState<DailyTodoFocusedScreen> {
  @override
  Widget build(BuildContext context) {
    final todo = ref
        .watch(todosProvider)
        .firstWhere((item) => item.id == widget.todo.id);

    print(todo.content);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.todo.content),
      ),
      body: Column(
        children: [
          // 타이머 상태를 표시하는 Text 위젯
          Text(
            "todo.timeCount.toString()",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 타이머 시작 버튼
              ElevatedButton(
                onPressed: () {},
                child: Text('시작'),
              ),
              SizedBox(width: 8),
              // 타이머 일시 중지 버튼
              ElevatedButton(
                onPressed: () {},
                child: Text('일시 중지'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_reminder_app/screens/daily_planner.dart';

class MainFrame extends StatefulWidget {
  @override
  State<MainFrame> createState() {
    return _MainFrameState();
  }
}

class _MainFrameState extends State<MainFrame> {
  @override
  Widget build(BuildContext context) {
    return DailyPlanner();
  }
}

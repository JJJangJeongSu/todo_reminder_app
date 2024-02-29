import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class PlannerNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlannerNavigationBarState();
  }
}

class _PlannerNavigationBarState extends State<PlannerNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month), label: "Calendar"),
      BottomNavigationBarItem(icon: Icon(Icons.today), label: "Daily"),
      BottomNavigationBarItem(icon: Icon(Icons.view_week), label: "Weekly")
    ]);
  }
}

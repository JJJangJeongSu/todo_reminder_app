import 'package:flutter/material.dart';

class DailyTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Text(
        "20:00:00",
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DailyTextField extends StatelessWidget {
  const DailyTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Add your Todo!",
          filled: true,
          fillColor: Colors.blue,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          isDense: true,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

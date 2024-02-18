import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_reminder_app/screens/main_frame.dart';

void main() {
  runApp(const MainApp());
}

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color.fromARGB(255, 0, 173, 145),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        home: MainFrame(),
        theme: theme,
      ),
    );
  }
}

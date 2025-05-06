import 'package:buoi5/ui/features/create_task/create_task_screen.dart';
import 'package:buoi5/ui/features/home/home_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateTaskScreen(),
    );
  }
}

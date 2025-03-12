import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_app/models/task_data.dart';
import 'package:today_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:today_app/models/tasks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(home: TasksScreen()),
    );
  }
}

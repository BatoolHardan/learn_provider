import 'package:flutter/material.dart';
import 'package:today_app/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go shopping', isDone: true),
    Task(name: 'go shopping', isDone: true),
    Task(name: 'go shopping', isDone: true),
  ];
}

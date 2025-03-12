import 'package:flutter/material.dart';
import 'package:today_app/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go shopping', isDone: false),
    Task(name: 'go shopping', isDone: false),
    Task(name: 'go shopping', isDone: false),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle, isDone: false));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }
}

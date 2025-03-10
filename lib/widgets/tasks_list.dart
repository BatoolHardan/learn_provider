import 'package:flutter/material.dart';
import 'package:today_app/models/tasks.dart';
import 'package:today_app/widgets/tasks_title.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'go shopping', isDone: false),
    Task(name: 'buy a gift', isDone: false),
    Task(name: 'repair the car', isDone: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TasksTitle(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
        TasksTitle(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
        TasksTitle(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
      ],
    );
  }
}

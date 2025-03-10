import 'package:flutter/material.dart';
import 'package:today_app/widgets/tasks_title.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [TasksTitle(), TasksTitle(), TasksTitle()]);
  }
}

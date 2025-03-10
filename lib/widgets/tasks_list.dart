import 'package:flutter/material.dart';
import 'package:today_app/models/tasks.dart';
import 'package:today_app/widgets/tasks_title.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key, required this.tasks});
  final List<Task> tasks;
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TasksTitle(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxChange: (newValue) {
            setState(() {
              widget.tasks[index].doneChange();
            });
          },
        );
      },
    );
    //   return ListView(
    //     children: [
    //       TasksTitle(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
    //       TasksTitle(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
    //       TasksTitle(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
    //     ],
    //   );
    // }
  }
}

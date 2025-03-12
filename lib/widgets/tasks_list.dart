import 'package:flutter/material.dart';
import 'package:today_app/models/task_data.dart';
import 'package:today_app/models/tasks.dart';
import 'package:today_app/widgets/tasks_title.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemCount: TaskData.tasks.length,
          itemBuilder: (context, index) {
            return TasksTitle(
              taskTitle: TaskData.tasks[index].name,
              isChecked: TaskData.tasks[index].isDone,
              checkboxChange: (newValue) {
                // setState(() {
                //   widget.tasks[index].doneChange();
                // });
              },
            );
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:today_app/models/task_data.dart';
import 'package:today_app/models/tasks.dart';
import 'tasks_screen.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatefulWidget {
  final Function(String) addTaskCallback;
  const AddTaskScreen({super.key, required this.addTaskCallback});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String? newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              setState(() {
                newTaskTitle = newText;
              });
            },
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {
              if (newTaskTitle != null && newTaskTitle!.trim().isNotEmpty) {
                Provider.of<TaskData>(
                  context,
                  listen: false,
                ).addTask(newTaskTitle!);
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please enter a task')),
                );
              }
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.teal[400],
            ),
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}

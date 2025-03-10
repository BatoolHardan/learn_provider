import 'package:flutter/material.dart';
import 'package:today_app/models/tasks.dart';
import 'tasks_screen.dart';

class AddTaskScreen extends StatefulWidget {
  final Function addTaskCallback;
  const AddTaskScreen({super.key, required this.addTaskCallback});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  List<Task> tasks = [
    Task(name: 'go shopping', isDone: true),
    Task(name: 'go shopping', isDone: true),
    Task(name: 'go shopping', isDone: true),
  ];

  @override
  Widget build(BuildContext context) {
    String? newTasktitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.indigo[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTasktitle = newText;
            },
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {
              widget.addTaskCallback(newTasktitle);
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.teal[400],
            ),

            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}

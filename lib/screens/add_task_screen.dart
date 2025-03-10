import 'package:flutter/material.dart';
import 'package:today_app/models/tasks.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  List<Task> tasks = [
    Task(name: 'go shopping', isDone: false),
    Task(name: 'buy a gift', isDone: false),
    Task(name: 'repair the car', isDone: false),
  ];

  @override
  Widget build(BuildContext context) {
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
          TextField(autofocus: true, textAlign: TextAlign.center),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {},
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

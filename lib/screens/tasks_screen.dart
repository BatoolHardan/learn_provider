import 'package:flutter/material.dart';
import 'package:today_app/models/tasks.dart';
import 'package:today_app/screens/add_task_screen.dart';
import 'package:today_app/widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'go shopping', isDone: true),
    Task(name: 'go shopping', isDone: true),
    Task(name: 'go shopping', isDone: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder:
                (context) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: AddTaskScreen(
                      addTaskCallback: (newTaskTitle) {
                        setState(() {
                          tasks.add(Task(name: newTaskTitle, isDone: true));
                          Navigator.pop(context);
                        });
                      },
                    ),
                  ),
                ),
          );
        },
        backgroundColor: Colors.indigo[400],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.playlist_add_check, size: 40, color: Colors.white),
                  SizedBox(width: 20),
                  Text(
                    'ToDayDo',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                ' ${tasks.length} tasks',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TasksList(tasks: tasks),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

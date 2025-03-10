import 'package:flutter/material.dart';

class TasksTitle extends StatefulWidget {
  const TasksTitle({super.key});

  @override
  State<TasksTitle> createState() => _TasksTitleState();
}

class _TasksTitleState extends State<TasksTitle> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'go shopping',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(isChecked, (valu)),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool?) checboxChange;
  const TaskCheckBox(
    this.checkboxState, {
    super.key,
    required this.checboxChange,
  });
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      value: checkboxState,
      onChanged: checboxChange,
    );
  }
}

import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  const TasksTitle({
    super.key,
    required this.taskTitle,
    required this.isChecked,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: null,
        // onChanged: checkboxChange,
      ),
    );
  }
}
// }(bool? newValue) {
//           setState(() {
//             isChecked = newValue!;
//           });
//     
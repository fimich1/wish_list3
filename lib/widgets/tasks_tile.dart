import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String taskTitle;
  final String task_Ed_ism;
  final double task_massa;
  final Function(bool?)? checkboxCallback;

  TaskTile({
    this.isChecked,
    required this.taskTitle,
    required this.task_Ed_ism,
    required this.task_massa,
    required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle+'  $task_massa '+task_Ed_ism,
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing:
      Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}





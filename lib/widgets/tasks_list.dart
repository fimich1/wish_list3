import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:wish_list3/model/task.dart';

class TaskList extends StatefulWidget {
  TaskList({
    required this.tasks,
    required this.dney,

  });

  final double dney;
  final List<Task> tasks;

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
          return TaskTile(
          dney: widget.dney,  //  надо передать сюда от pass  количество дней
          taskTitle: (widget.tasks[index].name),
          task_Ed_ism: (widget.tasks[index].ed_ism),
          task_massa: (widget.tasks[index].massa),
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}

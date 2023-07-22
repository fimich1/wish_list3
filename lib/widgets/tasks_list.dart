import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:wish_list3/model/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'купить орскую тушенку'),
    Task(name: 'купить башкирскую сгущенку'),
    Task(name: 'купить лук репяатый'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить орскую тушенку'),
    Task(name: 'купить башкирскую сгущенку'),
    Task(name: 'купить лук репяатый'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
    Task(name: 'купить что нибудь к чаю'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback:(checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wish_list3/widgets/tasks_list.dart';
import 'add_task.dart';
import 'package:wish_list3/model/task.dart';


class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Task name here', isDone: false),
    Task(name: 'Task name here', isDone: false),
    Task(name: 'Task name here', isDone: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(
                addNewTask: (newTaskTitle) {
                  setState(() {
                    tasks.add(Task(name: newTaskTitle));
                  });
                  Navigator.pop(context);
                },
              ),
            );
          }),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(top: 60, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.list,
                  size: 35,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Todoey',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                '${tasks.length} tasks',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TaskList(tasks: tasks),
            ),
          ),
        ),
      ]),
    );
  }
}
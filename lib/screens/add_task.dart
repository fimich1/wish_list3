import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key, required this.addNewTask});

  final Function addNewTask;

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Добавить вещь | продукт',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent),
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (newValue) {
                  newTaskTitle = '  $newValue  ';
                },
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                height: 50,
                color: Colors.lightBlueAccent,
                child: const Text(
                  'Добавить',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  addNewTask(newTaskTitle);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
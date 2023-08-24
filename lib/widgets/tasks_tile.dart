import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final double dney;  //  может быть не дабл а текст потом привести к дабл
  final bool? isChecked;
  final String taskTitle;
  final String task_Ed_ism;
  final double task_massa;
  final Function(bool?)? checkboxCallback;

  TaskTile({
    this.isChecked,
    required this.dney,
    required this.taskTitle,
    required this.task_Ed_ism,
    required this.task_massa,
    required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {

    // количетво дней на которые расчитываютс продукты
    // 1 - сделать выбор на 1 странцие при запуске
    // в листе продукты пока указаны на 5 дней

   // var dney = 1;
    String massa = (task_massa * dney).toStringAsFixed(1);
    return ListTile(
      title: Text(
        taskTitle + massa  +  task_Ed_ism,
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





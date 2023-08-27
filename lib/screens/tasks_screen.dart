import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wish_list3/widgets/tasks_list.dart';
import 'add_task.dart';
import 'package:wish_list3/model/task.dart';
import 'package:wish_list3/list_of_products/baidi.dart';

class TasksScreen extends StatefulWidget {

  final double dney;
  const TasksScreen ({required this.dney });

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  @override


  Widget build(BuildContext context) {
    double dey = widget.dney;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Упаковано:'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_shopping_cart_rounded),
            tooltip: 'Добавить продукт / вещь',
            onPressed: () {

              // onPressed: () {
              //   showModalBottomSheet(
              //       context: context,
              //       isScrollControlled: true,
              //       builder: (context) => SingleChildScrollView(
              //           child:Container(
              //             padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              //             child: AddTaskScreen(),
              //           )
              //       )
              //   );
              // } это чтобы на весь экран развернуть

              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => AddTaskScreen(
                  addNewTask: (newTaskTitle) {
                    setState(() {
                      tasks.add(Task(
                        name: newTaskTitle,
                        ed_ism: ' ',
                        massa: 1.0,
                      ));
                    });
                    Navigator.pop(context);
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.add_call),
            tooltip: 'Информация',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      backgroundColor: Colors.lightBlueAccent,
      // floatingActionButton: FloatingActionButton(
      //     backgroundColor: Colors.lightBlueAccent,
      //     child: Icon(Icons.add),
      //     onPressed: () {
      //       showModalBottomSheet(
      //         context: context,
      //         builder: (context) => AddTaskScreen(
      //           addNewTask: (newTaskTitle) {
      //             setState(() {
      //               tasks.add(Task(
      //                 name: newTaskTitle,
      //                 ed_ism: ' ',
      //                 massa: 1.0,
      //               ));
      //             });
      //             Navigator.pop(context);
      //           },
      //         ),
      //       );
      //     }),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(top: 30, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CircleAvatar(
              //   radius: 30,
              //   backgroundColor: Colors.white,
              //   child: Icon(
              //     Icons.list,
              //     size: 35,
              //   ),
              // ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Упаковано',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'количество продуктов | вещей: ${tasks.length} шт',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                'расчитано на количество дней: $dey на байдарках',

                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(

                    'по материалам А.П. Фесенко',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                'для пожеланий и изменений: @Efiriy, +79878693514',
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
              child: TaskList(
                  tasks: tasks,
                dney: dey,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

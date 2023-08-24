import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'screens/pass_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: TasksScreen(),
        initialRoute: '/pass',
        routes: {
          // '/hello': (context) => HellouaScreen(),
          '/list': (context) => TasksScreen(dney: 3.0),
          '/pass': (context) => PassWordPage(),
        });
  }
}

import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'screens/pass_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: TasksScreen(),
        initialRoute: '/pass',
        routes: {
          // '/hello': (context) => HellouaScreen(),
          '/list': (context) => const TasksScreen(dney: 3.0),
          '/pass': (context) => const PassWordPage(),
        });
  }
}

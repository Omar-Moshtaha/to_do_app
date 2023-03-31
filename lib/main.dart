
import 'package:flutter/material.dart';
import 'package:flutter_home_work/views/screens/main_tasks_screen.dart';

void main() {

  runApp( ResponsiveTest());
}

class  ResponsiveTest extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return MaterialApp(debugShowCheckedModeBanner: false,home: MainTasksScreen(),);
  }
}



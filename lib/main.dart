import 'package:flutter/material.dart';

import 'pages/pomodoro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomodoro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PomodoroPage(),
    );
  }
}

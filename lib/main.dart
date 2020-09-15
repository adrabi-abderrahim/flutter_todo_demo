import 'package:flutter/material.dart';
import 'package:flutter_todo_demo/RouteGenerator.dart';
import 'package:flutter_todo_demo/views/HomeView.dart';

void main() {
  runApp(FlutterTodo());
}

class FlutterTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Todo Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

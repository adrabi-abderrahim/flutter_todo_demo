import 'package:flutter/material.dart';
import 'package:flutter_todo_demo/views/HomeView.dart';
import 'package:flutter_todo_demo/views/TodoAddView.dart';
import 'package:flutter_todo_demo/views/TodoEditView.dart';

class RouteGenerator {
  static Route<dynamic> routeGenerator(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/add-todo':
        return MaterialPageRoute(builder: (_) => TodoAddView());
        break;

      case '/edit-todo':
        return MaterialPageRoute(builder: (_) => TodoEditView());
        break;

      default:
        return MaterialPageRoute(builder: (_) => HomeView());
        break;
    }
  }
}

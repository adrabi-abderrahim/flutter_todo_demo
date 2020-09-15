import 'package:flutter/material.dart';
import 'package:flutter_todo_demo/widgets/TodoAppBarWidget.dart';
import 'package:flutter_todo_demo/widgets/TodoFloatingButtonWidget.dart';
import 'package:flutter_todo_demo/widgets/TodoListViewWidget.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TodoAppBarWidget(
        showAllOnPressed: this._showAllOnPressed,
      ),
      body: SafeArea(
          child: TodoListViewWidget(
        itemCount: 10,
        hasEmptyBottom: true,
      )),
      floatingActionButton: TodoFloatingButtonWidget(
        floatingButtonPressed: () {
          Navigator.of(context).pushNamed('/add-todo');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _showAllOnPressed() {
    print('Show All');
  }
}

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
        hasEmptyBottom: true,
        itemCount: 8,
      )),
      floatingActionButton: TodoFloatingButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _showAllOnPressed() {
    print('Show All');
  }
}

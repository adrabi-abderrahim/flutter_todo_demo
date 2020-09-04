import 'package:flutter/material.dart';

class TodoFloatingButtonWidget extends StatefulWidget {
  final dynamic floatingButtonPressed;

  TodoFloatingButtonWidget({Key key, this.floatingButtonPressed})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TodoFloatingButtonWidgetState();
}

class _TodoFloatingButtonWidgetState extends State<TodoFloatingButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: this.widget.floatingButtonPressed,
    );
  }
}

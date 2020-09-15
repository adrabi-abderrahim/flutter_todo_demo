import 'package:flutter/material.dart';

typedef RowTodoOnValidatePressed();
typedef RowTodoOnEditTapped();

class TodoRowWidget extends StatefulWidget {
  final int index;
  final RowTodoOnValidatePressed todoOnValidatePressed;
  final RowTodoOnEditTapped todoOnEditTapped;

  TodoRowWidget(
      {Key key, this.index, this.todoOnValidatePressed, this.todoOnEditTapped})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TodoRowWidgetState();
}

class _TodoRowWidgetState extends State<TodoRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Container(
          height: 3,
          color: Colors.lightGreenAccent,
        ),
        ListTile(
          title: Text(
            'Todo! ${widget.index}',
            style: Theme.of(context).textTheme.headline5,
          ),
          subtitle: Text(DateTime.now().toString()),
          trailing: IconButton(
            icon: Icon(Icons.check),
            onPressed: widget.todoOnValidatePressed,
          ),
          onTap: widget.todoOnEditTapped,
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_todo_demo/widgets/TodoRowWidget.dart';

class TodoListViewWidget extends StatefulWidget {
  final bool hasEmptyTop;
  final bool hasEmptyBottom;
  final int itemCount;
  final double topPercentSize;
  final double bottomPresentSize;
  final dynamic itemBuilder;

  TodoListViewWidget(
      {Key key,
      this.hasEmptyTop: false,
      this.hasEmptyBottom: false,
      this.itemCount: 0,
      this.topPercentSize: 0.2,
      this.bottomPresentSize: 0.2,
      this.itemBuilder})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TodoListViewWidgetState();
}

class _TodoListViewWidgetState extends State<TodoListViewWidget> {
  @override
  Widget build(BuildContext context) {
    final int topOffset = widget.hasEmptyTop ? 1 : 0;
    final int bottomOffset = widget.hasEmptyBottom ? 1 : 0;
    final int count = this.widget.itemCount + topOffset + bottomOffset;

    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int index) {
          if (widget.hasEmptyTop && index == 0) {
            return Container(
              height:
                  MediaQuery.of(context).size.height * widget.topPercentSize,
            );
          } else if (widget.hasEmptyBottom && index + 1 >= count) {
            return Container(
              height:
                  MediaQuery.of(context).size.height * widget.bottomPresentSize,
            );
          } else {
            return TodoRowWidget(
              index: index + 1 + topOffset,
            );
          }
        });
  }
}

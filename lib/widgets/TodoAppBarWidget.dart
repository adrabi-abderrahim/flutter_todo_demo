import 'package:flutter/material.dart';

///
/// Create App bar custom widget.
///
class TodoAppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final dynamic showAllOnPressed;

  static const double PADDING_BOTTOM = 10;

  TodoAppBarWidget({Key key, this.showAllOnPressed}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TodoAppBarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + PADDING_BOTTOM);
}

class _TodoAppBarWidgetState extends State<TodoAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: TodoAppBarWidget.PADDING_BOTTOM),
        child: AppBar(
          title: Text('Flutter Todo Demo.'),
          leading: IconButton(
            icon: Icon(Icons.all_inclusive),
            onPressed: this.widget.showAllOnPressed,
          ),
          actions: [
            Icon(Icons.book),
          ],
        ));
  }
}

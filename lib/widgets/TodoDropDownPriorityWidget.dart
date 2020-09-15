import 'package:flutter/material.dart';

typedef CallBackOnSelectChanged(int value);

class TodoDropDownPriorityWidget extends StatefulWidget {
  final CallBackOnSelectChanged onSelectChanged;

  TodoDropDownPriorityWidget({Key key, this.onSelectChanged}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TodoDropDownPriorityWidgetState();
}

class _TodoDropDownPriorityWidgetState extends State<TodoDropDownPriorityWidget> {
  int _currentValue = 1;
  Color _currentColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
        value: this._currentValue,
        decoration: InputDecoration(
          icon: Icon(
            Icons.access_time_sharp,
            color: this._currentColor,
          ),
        ),
        items: [
          DropdownMenuItem<int>(
            value: 2,
            child: Text('High'),
          ),
          DropdownMenuItem<int>(value: 1, child: Text('Normal')),
          DropdownMenuItem<int>(value: 0, child: Text('Whatever'))
        ],
        onChanged: this._onValueChanged
    );
  }

  void _onValueChanged(int value) {
    this.setState(() {
      this._currentValue = value;
      switch (this._currentValue) {
        case 0:
          this._currentColor = Colors.black45;
          break;
        case 1:
          this._currentColor = Colors.green;
          break;
        case 2:
          this._currentColor = Colors.red;
          break;
        default:
          this._currentColor = Colors.black45;
      }
    });
    if (widget.onSelectChanged != null) {
      widget.onSelectChanged(value);
    }
  }
}

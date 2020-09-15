import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

typedef void DatePickerOnTap(DateTime dateTime);

class TodoDatePickerWidget extends StatefulWidget {
  final DatePickerOnTap datePickerOnTap;

  TodoDatePickerWidget({Key key, this.datePickerOnTap}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TodoDatePickerWidgetState();
}

class _TodoDatePickerWidgetState extends State<TodoDatePickerWidget> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final TextStyle valueStyle = Theme.of(context).textTheme.bodyText1;
    //                DateFormat.yMMMEd().format(_selectedDate),
    return Row(children: [
      Icon(
        Icons.calendar_today,
        color: Colors.black54,
      ),
      SizedBox(
        width: 16,
      ),
      Expanded(
          child: InkWell(
              onTap: this._selectDateOnTap,
              child: InputDecorator(
                baseStyle: valueStyle,
                decoration: InputDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(DateFormat.yMMMEd().format(_selectedDate)),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              )))
    ]);
  }

  void _selectDateOnTap() async {
    final tmpDate = await this._selectDate();
    this.setState(() {
      this._selectedDate = tmpDate;
    });
    if (widget.datePickerOnTap != null) {
      widget.datePickerOnTap(this._selectedDate);
    }
  }

  Future<DateTime> _selectDate() async {
    DateTime pickedDate = await showDatePicker(
        context: this.context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(Duration(days: 365)),
        lastDate: DateTime.now().add(Duration(days: 365)));

    if (pickedDate == null) {
      pickedDate = DateTime.now();
    }
    return pickedDate;
  }
}

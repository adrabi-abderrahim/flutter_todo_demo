import 'package:flutter/material.dart';
import 'package:flutter_todo_demo/widgets/TodoDatePickerWidget.dart';
import 'package:flutter_todo_demo/widgets/TodoDropDownPriorityWidget.dart';

class TodoAddView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TodoAddViewState();
}

class _TodoAddViewState extends State<TodoAddView> {
  final GlobalKey<FormState> _formSKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a Todo"),
      ),
      body: this._buildForm(),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formSKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          TodoDatePickerWidget(
            datePickerOnTap: (DateTime datetime) {
              print(datetime);
            },
          ),
          SizedBox(
            height: 20,
          ),
          TodoDropDownPriorityWidget(
            onSelectChanged: (value) {
              print('selected value $value');
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            maxLines: 2,
            decoration: InputDecoration(
                icon: Icon(Icons.text_fields), hintText: 'New Task'),
          ),
          Divider(
            height: 32.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            RaisedButton(
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {}),
            SizedBox(width: 20,),
            RaisedButton(
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.black45,
                onPressed: () {})
          ],)

        ],
      ),
    );
  }
}

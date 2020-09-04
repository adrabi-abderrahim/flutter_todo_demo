import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_todo_demo/widgets/TodoAppBarWidget.dart';
import 'package:flutter_todo_demo/widgets/TodoRowWidget.dart';


class HomeView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _HomeViewState();

}

class _HomeViewState extends State<HomeView>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TodoAppBarWidget(
          showAllOnPressed: this._showAllOnPressed,
        ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index){
              return TodoRowWidget(index: index + 1,);
            }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _showAllOnPressed(){
    print('Show All');
  }

}
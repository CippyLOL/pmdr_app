import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  @override
  _ToDoState createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('To Do'),
      ),
      body: Center(
        child: Text('To Do'),
      ),
    );
  }
}
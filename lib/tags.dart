import 'package:flutter/material.dart';

class Tags extends StatefulWidget {
  @override
  _TagsState createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Tags'),
      ),
      body: Center(
        child: Text('Tags'),
      ),
      
    );
  }
}
import 'package:flutter/material.dart';
import 'package:pmdr_app/history.dart';
import 'package:pmdr_app/home.dart';
import 'package:pmdr_app/tags.dart';
import 'package:pmdr_app/todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'PMDR',
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
        canvasColor: Colors.grey[200]
      ),
      home: BotNavBar(),
      
    );
  }
}

class BotNavBar extends StatefulWidget {
  @override
  _BotNavBarState createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    Tags(),
    Home(),
    ToDo(),
    History(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      // currentIndex: _currentIndex,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 2.0,
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            onTap: onTappedBar,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.label), title: Text('Tags')),
              BottomNavigationBarItem(icon: Icon(Icons.timer), title: Text('Countdown')),
              BottomNavigationBarItem(icon: Icon(Icons.check), title: Text('ToDo')),
              BottomNavigationBarItem(icon: Icon(Icons.assignment), title: Text('History')),
            ],
          ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Countdown',
        child: Icon(
          Icons.add,
          size: 30.0,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

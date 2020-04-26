import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'testing 123',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(
        title: 'App title',
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey[700],
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                Colors.blueGrey[800],
                Colors.blueGrey[300],
              ])),
            ),
            CustomListTile(Icons.person, 'Profile', () {}),
            CustomListTile(Icons.notifications, 'Notifications', () {}),
            CustomListTile(Icons.settings, 'Settings', () {}),
            CustomListTile(Icons.input, 'Log Out', () {}),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This text is in the center',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: Row(
          children: <Widget>[
            Spacer(),
            IconButton(
              tooltip: 'Tags',
              icon: Icon(Icons.label),
              onPressed: () {},
              iconSize: 30.0,
            ),
            Spacer(flex: 2),
            IconButton(
              tooltip: 'Timer',
              icon: Icon(Icons.timer),
              onPressed: () {},
              iconSize: 30.0,
            ),
            Spacer(flex: 5),
            IconButton(
              tooltip: 'To Do',
              icon: Icon(Icons.check),
              onPressed: () {},
              iconSize: 30.0,
            ),
            Spacer(flex: 2),
            IconButton(
              tooltip: 'History',
              icon: Icon(Icons.assignment),
              onPressed: () {},
              iconSize: 30.0,
            ),
            Spacer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
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

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.blueAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 40.0,
              child: Row(
                children: <Widget>[
                  Icon(icon),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

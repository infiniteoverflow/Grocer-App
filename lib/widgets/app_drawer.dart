import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(250)),
      child: new Drawer(
        child: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.home,
                  color: Color(0xFF5ABD8C),
                ),
              ),
              ListTile(
                title: Text(
                  "Our Books",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.book,
                  color: Color(0xFF5ABD8C),
                ),
              ),
              ListTile(
                title: Text(
                  "Our Stores",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.store,
                  color: Color(0xFF5ABD8C),
                ),
              ),
              ListTile(
                title: Text(
                  "Careers",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.work,
                  color: Color(0xFF5ABD8C),
                ),
              ),
              ListTile(
                title: Text(
                  "Sell With Us",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.attach_money,
                  color: Color(0xFF5ABD8C),
                ),
              ),
              ListTile(
                title: Text(
                  "Newsletter",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.library_books,
                  color: Color(0xFF5ABD8C),
                ),
              ),
              ListTile(
                title: Text(
                  "Account",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: Icon(
                  Icons.person,
                  color: Color(0xFF5ABD8C),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:grocer_app/widgets/app_drawer.dart';
import 'package:grocer_app/widgets/main_content.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: AppDrawer(),
      body: MainContent(_scaffoldKey),
    );
  }
}
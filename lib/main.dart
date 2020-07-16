import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Grocery',
  home: Onboarding(),
  routes: <String,WidgetBuilder>{

  },
));

class Onboarding extends StatefulWidget {
  Onboarding({Key key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         child: Center(
           child: Text("Hello"),
         ),
      ),
    );
  }
}
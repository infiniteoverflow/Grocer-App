import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/flutteronboardingscreens.dart';
import 'package:flutter_onboarding_screen/OnbordingData.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Grocery',
  home: Onboarding(),
  routes: <String,WidgetBuilder>{

  },
));

final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "assets/images/book.png",
      title: "Discounted Secondhand Books",
      desc:"Used and near new secondhand books at great prices",
    ),
    OnbordingData(
      imagePath: "assets/images/shop.png",
      title: "20 Book Grocers Nationally",
      desc:"We Have Successfully opened 20 stores across the Nation.",
    ),
    OnbordingData(
      imagePath: "assets/images/box.png",
      title: "Sell or Recycle your old books with us.",
      desc:"If you are planning to downsize or sell your books , Grocer app is there for you.",
    ),
  ];

class Onboarding extends StatefulWidget {
  Onboarding({Key key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroScreen(
          list,
          MaterialPageRoute(builder: (context) => UserAuth(),
          fullscreenDialog: true
        ),
      )
    );
  }
}

class UserAuth extends StatefulWidget {
  UserAuth({Key key}) : super(key: key);

  @override
  _UserAuthState createState() => _UserAuthState();
}

class _UserAuthState extends State<UserAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/books.png"),
                  ),
                ),
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width,
              ),

              SizedBox(
                height: 20,
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                height: 55,
                child: RaisedButton(
                  onPressed: () {
                    
                  },
                  color: Colors.green[300],
                  child: Text(
                    "Sign In ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.green[400],
                    )
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                height: 55,
                child: RaisedButton(
                  onPressed: () {
                    
                  },
                  color: Colors.green[300],
                  child: Text(
                    "Sign up ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.green[400],
                    )
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/book.png"),
                  ),
                ),
                height: MediaQuery.of(context).size.height*0.3,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        )
      ),
    );
  }
}
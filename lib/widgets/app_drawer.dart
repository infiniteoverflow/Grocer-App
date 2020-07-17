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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ListTile(
              //   title: Text(
              //     "Home",
              //     style: TextStyle(fontSize: 20),
              //   ),
              //   trailing: Icon(
              //     Icons.home,
              //     color: Color(0xFF5ABD8C),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:15.0),
                      child: Text(
                        "Home",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.home,
                      color: Color(0xFF5ABD8C),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:15.0),
                      child: Text(
                        "Our Books",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.book,
                      color: Color(0xFF5ABD8C),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:15.0),
                      child: Text(
                        "Our Stores",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.store,
                      color: Color(0xFF5ABD8C),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:15.0),
                      child: Text(
                        "Careers",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.card_travel,
                      color: Color(0xFF5ABD8C),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:15.0),
                      child: Text(
                        "Sell With Us",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.attach_money,
                      color: Color(0xFF5ABD8C),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:15.0),
                      child: Text(
                        "Newsletter",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.library_books,
                      color: Color(0xFF5ABD8C),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:15.0),
                      child: Text(
                        "Account",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.person,
                      color: Color(0xFF5ABD8C),
                    ),
                  ],
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.settings),
                    color: Colors.grey,
                    onPressed: () {

                    },
                  ),

                  Text(
                    "Terms",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  Text(
                    "Privacy",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:grocer_app/screens/searchScreen.dart';
import 'package:grocer_app/screens/wishlist.dart';
import 'package:grocer_app/widgets/appDrawer.dart';
import 'package:grocer_app/widgets/mainContent.dart';

import 'cart.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedPage = 0;
  final _pageOptions = [
    MainContent(_scaffoldKey),
    SearchPage(),
    WishList(),
    Cart()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: AppDrawer(),
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF5ABD8C),
        ),
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Color(0xFFFFFFFF),
          unselectedItemColor: Color(0x50FFFFFF),
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Color(0x50FFFFFF)),
                title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Color(0x50FFFFFF)),
                title: Text('Search')),
            BottomNavigationBarItem(
                icon: Icon(Icons.playlist_add, color: Color(0x50FFFFFF)),
                title: Text('Wishlist')),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, color: Color(0x50FFFFFF)),
                title: Text('Cart'))
          ],
        ),
      ),
    );
  }
}
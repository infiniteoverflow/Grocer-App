import 'package:flutter/material.dart';
import 'package:grocer_app/widgets/ui_helper.dart';

class MainContent extends StatelessWidget {

  final _scaffoldKey;
  MainContent(this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150)
                ),
                color: Color(0xFF5ABD8C)
              ),
              height: 450,
              width: MediaQuery.of(context).size.width,
            ),

            Positioned(
              top: 30,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TopPicks,
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      _scaffoldKey.currentState.openEndDrawer();
                    },
                  ),
                ],
              ),
            ),

            Positioned(
              left: 0,
              top: 100,
              child: Container(
                height: 350.0,
                width: MediaQuery.of(context).size.width,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: OurTopPicks),
              ),
            ),
          ],
        ),
        TextBestSellers,
        Container(
          height: 350.0,
          child: ListView(
              scrollDirection: Axis.horizontal, children: BestSellersBook),
        ),
        TextGenres,
        TextRecentlyViewed,
        Container(
          height: 350.0,
          child: ListView(
              scrollDirection: Axis.horizontal, children: RecentlyViewedBook),
        ),
        TextMonthlyNewsletter,
        MonthlyNewsletterCard
      ],
    );
  }

  Widget get TextBestSellers => Padding(
    padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
    child: Text(
      "Bestsellers",
      style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    ),
  );

  Widget get TopPicks => Padding(
    padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
    child: Text(
      "Our Top Picks",
      style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    ),
  );

  Widget get TextGenres => Padding(
    padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
    child: Text(
      "Genres",
      style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    ),
  );

  Widget get TextRecentlyViewed => Padding(
    padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
    child: Text(
      "Recently Viewed",
      style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    ),
  );

  Widget get TextMonthlyNewsletter => Padding(
    padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
    child: Text(
      "Monthly Newsletter",
      style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      textAlign: TextAlign.left,
    ),
  );

  Widget get MonthlyNewsletterCard => Padding(
    padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        color: Color(0x50EFEFEF),
        height: 350,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                "Receive our monthly newsletter and receive updates on new stock, books and the occasional promotion.",
                style: TextStyle(color: Color(0x50212121)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                obscureText: false,
                decoration: new InputDecoration(
                  focusedBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Color(0xFF5ABD8C), width: 2),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  enabledBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Color(0x80EFEFEF), width: 2),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Color(0x75000000)),
                  hintText: "Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                obscureText: false,
                decoration: new InputDecoration(
                  focusedBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Color(0xFF5ABD8C), width: 2),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  enabledBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Color(0x80EFEFEF), width: 2),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Color(0x75000000)),
                  hintText: "Email Adreess",
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: MaterialButton(
                    minWidth: 160,
                    color: Color(0xFF5ABD8C),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                )),
          ],
        ),
      ),
    ),
  );
}


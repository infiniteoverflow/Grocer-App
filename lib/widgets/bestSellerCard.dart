import 'package:flutter/material.dart';

class BestSellersCard extends StatelessWidget {
  final String imagePath, author, bookName, stars;

  BestSellersCard(this.imagePath, this.author, this.bookName, this.stars);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
      child: Column(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color(0x50000000),
                blurRadius: 10.0, // has the effect of softening the shadow
                offset: Offset(
                  0, // horizontal, move right
                  10.0, // vertical, move down
                ),
              ),
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 210,
                    width: 137,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              bookName,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              author,
              style: TextStyle(fontSize: 13, color: Color(0x50242126)),
              textAlign: TextAlign.center,
            ),
          ),
          Stars
        ],
      ),
    );
  }

  Widget get Stars => Row(
      children: <Widget>[
        Icon(
          Icons.star,
          color: Color(0xFF5ABD8C),
        ),
        Icon(
          Icons.star,
          color: Color(0xFF5ABD8C),
        ),
        Icon(
          Icons.star,
          color: Color(0xFF5ABD8C),
        ),
        Icon(
          Icons.star,
          color: Color(0xFF5ABD8C),
        ),
        Icon(
          Icons.star,
          color: Color(0xFF5ABD8C),
        )
      ],
    );
}
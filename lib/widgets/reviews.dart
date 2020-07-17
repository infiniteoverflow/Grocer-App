import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {

  final String imagePath, review, stars;

  const Reviews({Key key,this.imagePath, this.review, this.stars}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: Row(
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 250,
                    child: Text(
                      "$review",
                      softWrap: true,
                    ),
                  ),
                ),

                GestureDetector(
                  child: Text(
                    "Read more"
                  ),
                ),

                Stars
              ],
            ),

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fitHeight
                )
              ),
              height: 200,
              width: 100,
            )
          ]
        ),
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
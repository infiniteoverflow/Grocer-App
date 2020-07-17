import 'package:flutter/material.dart';

class AccountDetails extends StatefulWidget {
  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color:Color(0xFF5ABD8C)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*2/3,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Aswin Gopinathan",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: Text(
                        "An enthusiastic techie who spends reading"
                        "books in his freetime !!",
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Text(
                          "Bangalore , India",
                          style:TextStyle(
                            color: Colors.grey
                          )
                        )
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "25",
                              style:TextStyle(
                                fontSize: 25,
                                color: Colors.grey
                              )
                            ),

                            Text(
                              "Books",
                              style:TextStyle(
                                fontSize: 15,
                              )
                            )
                          ],
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Column(
                          children: [
                            Text(
                              "5",
                              style:TextStyle(
                                fontSize: 25,
                                color: Colors.grey
                              )
                            ),

                            Text(
                              "Reviews",
                              style:TextStyle(
                                fontSize: 15,
                              )
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width/3,
                padding: const EdgeInsets.only(right:20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image(
                          image: NetworkImage(
                            "https://avatars1.githubusercontent.com/u/40236624?s=460&u=fe7b1159095141d41d09f8f4627cda71d569bbb9&v=4",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    RaisedButton(
                      onPressed: () {

                      },
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                      ),
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      color: Colors.green[300],
                    )
                  ],
                ),
              ),
            ]
          ),
          
        ]
      ),
    );
  }
}
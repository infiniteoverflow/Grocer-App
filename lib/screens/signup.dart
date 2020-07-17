import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios),
          color: Colors.green,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                      ),
                      filled: true,
                      fillColor: Colors.red[150],
                      labelText: "First and Last Name",
                      floatingLabelBehavior: FloatingLabelBehavior.never
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      labelText: "Email",
                      floatingLabelBehavior: FloatingLabelBehavior.never
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      labelText: "Mobile Phone",
                      floatingLabelBehavior: FloatingLabelBehavior.never
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      labelText: "Group Special Code (optional)",
                      floatingLabelBehavior: FloatingLabelBehavior.never
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye,color: Colors.grey,),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                      filled: true,
                      fillColor: Colors.grey[150],
                      labelText: "Password",
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    obscureText: _obscureText,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        checkColor: Colors.white,
                        activeColor: Colors.green[300],
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },

                      ),

                      Padding(
                        padding: const EdgeInsets.only(left:6.0),
                        child: Text(
                          "Please Sign me up for latest newsletters"
                        ),
                      )
                    ],
                  ),

                ],
              ),

              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: RaisedButton(
                    onPressed: () {
                      
                    },
                    color: Colors.white,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide(
                        color:Colors.green,
                      )
                    ),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.green
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
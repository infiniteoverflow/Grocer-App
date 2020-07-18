
import 'package:flutter/material.dart';
import 'package:grocer_app/screens/filterScreen.dart';

class SearchPage extends StatefulWidget {

  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final List<Widget> body = [
    textBody(),
    suggestion(),
  ];

  int bodyIndex = 0;
  int actionIndex = 1;
  TextEditingController controller = TextEditingController();

  static List<String> suggestions = [
    "Search 1",
    "Search 2",
    "Search 3"
  ];

  Icon actionIcon = Icon(Icons.tune);
  FocusNode myFocusNode;
  bool initialTap = false;

  @override
  void initState() { 
    super.initState();
    myFocusNode = FocusNode();
  }

  static textBody() {
    return Center(child: Text("Hello"));
  }

  static suggestion() {
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) => SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top:18,bottom:18,left:30),
                child: Icon(Icons.search),
              ),
            ),
            Expanded(
              flex:3,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  suggestions[index],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Padding(
                padding: const EdgeInsets.only(top:18,bottom:18,right:30),
                child: Icon(Icons.cancel,color: Colors.green,),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget searchBar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              focusNode: myFocusNode,
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                prefixIcon: Icon(Icons.search),
                hintText: "Search books and authors",
                suffixIcon: IconButton(
                  icon: actionIcon,
                  onPressed: () {
                    print(actionIndex);
                    if(actionIndex == 0) {
                      actionIndex = 1;
                      actionIcon = Icon(Icons.tune);
                      bodyIndex = 0;
                      controller.text = " ";
                      myFocusNode.unfocus();
                    } else {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => FilterScreen(),
                      ));
                    }

                    setState(() {
                      
                    });
                  },
                ),
              ),
              onChanged: (String val) {
                if(val.length >= 0) {
                  print(0);
                  bodyIndex = 1;
                  actionIndex = 0;
                  actionIcon = Icon(Icons.cancel);
                  setState(() {
                    
                  });
                }
              },
              onTap: () {
                if(!initialTap) {
                  bodyIndex = 1;
                  actionIndex = 0;
                  initialTap = true;
                  actionIcon = Icon(Icons.cancel);
                  setState(() {
                    
                  });
                }
              },
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            searchBar(),
            Expanded(
              child: body[bodyIndex%2],
            )
          ],
        ),
      )
    );
  }
}

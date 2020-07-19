
import 'package:flutter/material.dart';
import 'package:grocer_app/screens/filterScreen.dart';

int selectedTopic = 0;


class SearchPage extends StatefulWidget {

  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final List<Widget> body = [
    
  ];

  int bodyIndex = 0;
  int actionIndex = 1;
  TextEditingController controller = TextEditingController();

  static List<String> suggestions = [
    "Search 1",
    "Search 2",
    "Search 3"
  ];

  List topics = [
    "Genres",
    "New Arrivals",
    "The Arts"
  ];

  List gridElems = [
    ['assets/images/search/Biography.jpg',Colors.pink[700],"Biography"],
    ['assets/images/search/Business.jpg',Colors.yellow[700],"Business"],
    ['assets/images/search/Children.jpg',Colors.orange[300],"Children"],
    ['assets/images/search/Cookery.jpg',Colors.red[700],"Cookery"],
    ['assets/images/search/Fiction.jpg',Colors.blue[300],"Fiction"],
    ['assets/images/search/Graphic Novels.jpg',Colors.brown[700],"Graphic Novels"],
  ];

  Icon actionIcon = Icon(Icons.tune);
  FocusNode myFocusNode;
  bool initialTap = false;

  @override
  void initState() { 
    super.initState();
    myFocusNode = FocusNode();
    body.add(topicSuggestion());
    body.add(suggestionsSearchView());
  }

  Widget topicSuggestion() {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _scrollWidget(0, "Genres"),
              _scrollWidget(1, "New Arrivals"),
              _scrollWidget(2, "The Art")
            ],
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: gridElems.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15
              ),
              itemBuilder: (context, index){
                return gridWidget(gridElems[index][0], gridElems[index][1],gridElems[index][2]);
              },
            ),
          ),
        )
      ],
    );
  }

  Widget gridWidget(String imgPath,Color color,String text) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),

          Padding(padding: EdgeInsets.all(10),),

          Expanded(
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.fill
                )
              ),
              
            ),
          ),


        ],
      )
    );
  }

  Widget _scrollWidget(int index,String topic) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            selectCard(index);
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),        
          child: Text(
            topic,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: selectedTopic == index? Colors.black : Colors.grey
            ),
          ),
        ),
      ),
    );
  }


  Widget suggestionsSearchView() {
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
    print(selectedTopic);
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

  void selectCard(int index) {
    setState(() {
      selectedTopic = index;
    });
  }
}

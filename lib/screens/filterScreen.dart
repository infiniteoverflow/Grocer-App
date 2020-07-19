import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  FilterScreen({Key key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  int sortValue = 0;
  int genreValue = 0;
  int reviewValue = 0;

  void _handleSortValue(int val) {
    setState(() {
      sortValue = val;
    });
  } 

  void _handleGenreValue(int val) {
    setState(() {
      genreValue = val;
    });
  }

  void _handleReviewValue(int val) {
    setState(() {
      reviewValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text(
                   "Filter",
                   style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GestureDetector(
                   onTap: () {
                     Navigator.pop(context);
                   },
                   child: Text(
                     "Cancel",
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                       color: Colors.grey
                     ),
                   ),
                 ),
               ),
             ],
           ),

           SizedBox(
             height: 10,
           ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
               "Sort by",
               style: TextStyle(
                 color: Colors.grey,
                 fontWeight: FontWeight.bold
               ),
             ),
           ),

           SingleChildScrollView(
             child: Column(
               children: [
                 Row(
                   children: [
                     Radio(
                      value: 0,
                      groupValue: sortValue,
                      
                      onChanged: (value) {
                        _handleSortValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                      
                    ),

                    Text(
                      "Featured Titles",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                   ],
                 ),

                 Row(
                   children: [
                     Radio(
                      value: 1,
                      groupValue: sortValue,
                      
                      onChanged: (value) {
                        _handleSortValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                    ),

                    Text(
                      "Price : Low to High",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                   ],
                 ),

                 Row(
                   children: [
                     Radio(
                      value: 2,
                      groupValue: sortValue,
                      
                      onChanged: (value) {
                        _handleSortValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                    ),

                    Text(
                      "Price : High to Low",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                   ],
                 ),

                 Row(
                   children: [
                     Radio(
                      value: 3,
                      groupValue: sortValue,
                      
                      onChanged: (value) {
                        _handleSortValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                    ),

                    Text(
                      "Publication Date",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                   ],
                 ),

                 Row(
                   children: [
                     Radio(
                      value: 4,
                      groupValue: sortValue,
                      
                      onChanged: (value) {
                        _handleSortValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                    ),

                    Text(
                      "A-Z",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                   ],
                 )
               ],
             ),
           ),


           SizedBox(
             height: 10,
           ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
               "Genre",
               style: TextStyle(
                 color: Colors.grey,
                 fontWeight: FontWeight.bold
               ),
             ),
           ),

           SingleChildScrollView(
             child: Column(
               children: [
                 Row(
                   children: [
                     Radio(
                      value: 0,
                      groupValue: genreValue,
                      
                      onChanged: (value) {
                        _handleGenreValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                      
                    ),

                    Text(
                      "Biography",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                   ],
                 ),

                 Row(
                   children: [
                     Radio(
                      value: 1,
                      groupValue: genreValue,
                      
                      onChanged: (value) {
                        _handleGenreValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                    ),

                    Text(
                      "Business and Economics",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                   ],
                 ),

                 Row(
                   children: [
                     Radio(
                      value: 2,
                      groupValue: genreValue,
                      
                      onChanged: (value) {
                        _handleGenreValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                    ),

                    Text(
                      "Children",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                   ],
                 ),

                 Row(
                   children: [
                     Radio(
                      value: 3,
                      groupValue: genreValue,
                      
                      onChanged: (value) {
                        _handleGenreValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                    ),

                    Text(
                      "Cookery",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                   ],
                 ),

                 Row(
                   children: [
                     Radio(
                      value: 4,
                      groupValue: genreValue,
                      
                      onChanged: (value) {
                        _handleGenreValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                    ),

                    Text(
                      "Fiction",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                   ],
                 )
               ],
             ),
           ),

           SizedBox(
             height: 10,
           ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
               "Average Customer Review",
               style: TextStyle(
                 color: Colors.grey,
                 fontWeight: FontWeight.bold
               ),
             ),
           ),

           SingleChildScrollView(
             child: Column(
               children: [
                 Row(
                   children: [
                     Radio(
                      value: 0,
                      groupValue: reviewValue,
                      
                      onChanged: (value) {
                        _handleReviewValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                      
                    ),

                    getStars(5)
                   ],
                 ),

                 Row(
                   children: [
                     Radio(
                      value: 1,
                      groupValue: reviewValue,
                      
                      onChanged: (value) {
                        _handleReviewValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                    ),

                    getStars(4)
                   ],
                 ),

                 Row(
                   children: [
                     Radio(
                      value: 2,
                      groupValue: reviewValue,
                      
                      onChanged: (value) {
                        _handleReviewValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                    ),

                    getStars(3)
                   ],
                 ),

                 Row(
                   children: [
                     Radio(
                      value: 3,
                      groupValue: reviewValue,
                      
                      onChanged: (value) {
                        _handleReviewValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                    ),

                    getStars(2)
                   ],
                 ),

                 Row(
                   children: [
                     Radio(
                      value: 4,
                      groupValue: reviewValue,
                      
                      onChanged: (value) {
                        _handleReviewValue(value);
                      },
                      activeColor: Color(0xFF5ABD8C),
                    ),

                    getStars(1)
                   ],
                 )
               ],
             ),
           ),
         ],
       ),
       bottomNavigationBar: Container(
         color: Colors.white,
         padding: EdgeInsets.all(10),
         width: double.infinity,
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 10.0),
           child: SizedBox(
             width: MediaQuery.of(context).size.width*0.5,
             height: 40,
             child: RaisedButton(
               onPressed: () {

               },
               child: Text(
                 "Apply",
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.white
                 ),
               ),
               color: Color(0xFF5ABD8C),
               shape: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
                 borderSide: BorderSide.none
               ),
             ),
           ),
         ),
       ),
    );
  }

  Widget getStars(int review) {
    return Row(
      children: [
        for(int i=0;i<review;i++) Icon(Icons.star,color: Color(0xFF5ABD8C),),
        for(int i=0;i<5-review;i++) Icon(Icons.star,color: Colors.grey,),
      ],
    );
  }
}
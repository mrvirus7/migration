import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'itemswidget.dart';

class MiddleLayout extends StatelessWidget {
  const MiddleLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var coffeList;
    return Container(
      color: Color(0xFF00704A),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(onPressed: (){
              Navigator.pushNamed(context, 'homescreen');

            }, child: Text("Immigration",style: TextStyle(fontSize: 25.0,color: Colors.white)),
              // Text('It\'s a great day for coffe!',style: TextStyle(fontSize: 25.0),
            ),
            // Categories(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(0, 3),
                      )
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 250,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search",
                              fillColor: CupertinoColors.inactiveGray,
                              border:InputBorder.none
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.search,color: Color(0xFF00704A),)
                  ],
                ),
              ),

            ),


            ItemsWidget(),


          ],
        ),


      ),

    );
  }
}


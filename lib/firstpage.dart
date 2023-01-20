import 'package:flutter/material.dart';
import 'package:migration/FormPage.dart';
import 'package:migration/Home.dart';
import 'package:migration/about.dart';
import 'package:migration/add_screen.dart';
import 'package:migration/muongozi.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int index_color =0;
  List Screen = [Home(),About(),Home(),Muongozo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[index_color],
floatingActionButton: FloatingActionButton(
  onPressed: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddScreen()));
  },
  child: Icon(Icons.add),
  backgroundColor: Color(0xff368983),
),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5,bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    index_color=0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: index_color == 0 ? Color(0xff368983): Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index_color=1;
                  });
                },
                child: Icon(
                  Icons.view_in_ar_sharp,
                  size: 30,
                  color: index_color == 1 ? Color(0xff368983): Colors.grey,
                ),
              ),
              SizedBox(width: 20,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index_color=2;
                  });
                },
                child: Icon(
                  Icons.add_alert_sharp,
                  size: 30,
                  color: index_color == 2 ? Color(0xff368983): Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index_color=3;
                  });
                },
                child: Icon(
                  Icons.accessibility_sharp,
                  size: 30,
                  color: index_color == 3 ? Color(0xff368983): Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}

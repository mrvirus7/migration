import 'package:flutter/material.dart';
import 'package:migration/components/middlelayout.dart';

class Layout1 extends StatelessWidget {
  const Layout1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color(0xFF00704A),
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 12.0, 0),
            child: IconButton(
              onPressed: ()=>{

              }, icon: Icon(
              Icons.person,
              size: 35.0,
            ),  ),
          ),
        ],
      ),
      body: MiddleLayout(),
    );
  }
}


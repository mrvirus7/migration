import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
            ()=>Navigator.pushNamed(
            context, 'homepage'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF1C7587),
                  Color(0xFF65A0AD)
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Text("PASSPORT",style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold,color: Colors.white),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 40.0,right: 18),
                  child: Image.asset(
                    'assets/images/umoja.png',
                    height: 200.0,
                    width: 200.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text("Tanzania e-Immigration \n \t \t Online Portal App",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0,bottom: 0),
              child: Text("Loading... ",style: TextStyle(fontSize: 15,color: Colors.white),),
            ),

            Padding(
              padding: const EdgeInsets.only(top:0,left: 28.0,right: 28.0),
              child: LinearProgressIndicator(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom: 0),
              child: Text("v1.0.0 ",style: TextStyle(fontSize: 15,color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:migration/add_screen.dart';
import 'package:migration/endeleza_ombi.dart';
import 'package:migration/firstpage.dart';
import 'package:migration/kidokezo.dart';
import 'package:migration/splash.dart';
import 'package:migration/ufuatiliaji.dart';

void main() {
  runApp(MaterialApp(
debugShowCheckedModeBanner: false,
    initialRoute:
    'splashscreen',
    routes: {
      'homepage':(context)=>FirstPage(),
      'splashscreen':(context)=>SplashScreen(),
      'kidokezo':(context)=>Kidokezo(),
      'add_screen':(context)=>AddScreen(),
      'endeleza':(context)=>Endeleza(),
      'ufuatiliaji':(context)=>Ufuatiliaji()

    },
  )
  );
}


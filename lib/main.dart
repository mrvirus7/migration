
import 'package:flutter/material.dart';
import 'package:migration/add_screen.dart';
import 'package:migration/components/layout1.dart';
import 'package:migration/dialogpage.dart';
import 'package:migration/dropdown.dart';
import 'package:migration/endeleza_ombi.dart';
import 'package:migration/firstpage.dart';
import 'package:migration/kidokezo.dart';
import 'package:migration/muongozi.dart';
import 'package:migration/splash.dart';
import 'package:migration/stepper_page.dart';
import 'package:migration/ufuatiliaji.dart';
import 'package:migration/uploadfile.dart';



void main() {
  runApp(MaterialApp(
debugShowCheckedModeBanner: false,
    initialRoute:
    'splashscreen',
    routes: {
      'homepage':(context)=>FirstPage(),
      'splashscreen':(context)=>SplashScreen(),
      'dropdown':(context)=>DropDown(),
      'layout1':(context)=>Layout1(),
      'kidokezo':(context)=>Kidokezo(),
      'add_screen':(context)=>AddScreen(),
      'endeleza':(context)=>Endeleza(),
      'ufuatiliaji':(context)=>Ufuatiliaji(),
      'muongozo':(context)=>Muongozo(),
      'stepper_page':(context)=>StepperPage(),
      'uploadfile':(context)=>UploadFile(),
      'dialogpage':(context)=>DialogPage()

    },
  )
  );
}


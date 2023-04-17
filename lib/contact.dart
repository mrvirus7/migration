import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'config/Palette.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/uha.jpg"),
                      fit: BoxFit.fill
                  )
              ),
              child: Container(

                color: Color(0xff368983).withOpacity(.80),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0,right: 14),
                      child: Image.asset(
                        'assets/images/umoja.png',
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0,right: 10),
                      child: Text("e-Immigration Portal",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),

                  ],
                ),
              ),



            ),

          ),
          Positioned(
              top: 110,
              child: Container(
                height: 500,
                width: MediaQuery.of(context).size.width-40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5
                      ),
                    ]
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [


                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 1,left: 20),
                              child: Text("Immigration Contact Information",style: TextStyle(fontSize: 15.0,color: Colors.teal),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1.0),
                              child: Center(
                                  child:
                                  Lottie.asset('assets/animation/sendfile.json')),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("DODOMA HEADQUARTERS\n"
                                  "Tanzania Immigration Department\n"
                                  "1181, Dodoma, Tanzania\n"
                                     " +255 262-323542\n"
                                  "+255 262323532\n"
                                  "info@immigration.go.tz",style: TextStyle(fontSize: 11.0),

                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("ZANZIBAR OFFICE\n"
                                  "Immigration Head Office Zanzibar\n"
                                  "1354, Zanzibar - Tanzania\n"
                                  "+255 242 233 678\n"
                                  "+255 242 233 676\n"
                                  "proznz@immigration.go.tz",style: TextStyle(fontSize: 11.0),

                              ),
                            ),


                          ],
                        ),
                      ),



                    ],
                  ),
                ),
              )
          ),
          // Positioned(
          //
          //     bottom: 0,
          //     left: 0,
          //     right: 0,
          //     child: Container(
          //       height: 50,
          //       decoration: BoxDecoration(
          //
          //       ),
          //       child: Container(
          //
          //         color: Color(0xFF3b5999).withOpacity(.80),
          //         child: Column(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(top: 1.0,right: 14),
          //
          //
          //               child:  TextButton(onPressed: (){},
          //                   child: Text("passporttanzania@immagration.go.tz",style: TextStyle(color: Colors.white),)),
          //
          //
          //
          //             ),
          //
          //
          //           ],
          //         ),
          //       ),
          //     ))
        ],
      ),
    );
  }
}



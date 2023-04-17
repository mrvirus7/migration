import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'config/Palette.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              height: 130,
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
                        height: 70.0,
                        width: 70.0,
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
              top: 135,
              child: Container(
                height: 480,
                width: MediaQuery.of(context).size.width-35,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5
                      ),
                    ]
                ),

                  child: Column(
                    children: [


                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                            Padding(
                              padding: const EdgeInsets.only(top: 1.0),
                              child: Center(
                                  child:
                                  Lottie.asset('assets/animation/pc.json')),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 80),
                              child: Text("Chagua Huduma ",style: TextStyle(color: Colors.teal,fontSize: 16),),
                            ),

             GridView.count(
              childAspectRatio: 0.60,

              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                // for(int i =1; i< 9; i++)

                Container(
                  padding:EdgeInsets.only(top: 10) ,
                  margin: EdgeInsets.symmetric(vertical: 2,horizontal: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [

                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "endeleza");
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "assets/images/pass1.jpg",
                            height: 80,
                            width: 70,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: Text(
                                "Endeleza ",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4C53A5),
                                ),
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding:EdgeInsets.only(top: 10) ,
                  margin: EdgeInsets.symmetric(vertical: 2,horizontal: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [

                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "add_screen");
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "assets/images/pass2.jpg",
                            height: 80,
                            width: 70,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text(
                                "Ombi Jipya",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4C53A5),
                                ),
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding:EdgeInsets.only(top: 10) ,
                  margin: EdgeInsets.symmetric(vertical: 2,horizontal: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [

                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "ufuatiliaji");
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "assets/images/pass1.jpg",
                            height: 80,
                            width: 70,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15.0),
                              child: Text(
                                "Ufuatiliaji",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4C53A5),
                                ),
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),






              ],

            ),





                          ],
                        ),
                      ),



                    ],
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

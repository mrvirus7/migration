import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

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
              height: 220,
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
                        height: 100.0,
                        width: 100.0,
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
              top: 180,
              child: Container(
                height: 410,
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

                      Row(

                        children: [
                          Column(
                            children: [
                              TextButton(onPressed: (){
                                Navigator.pushNamed(context, 'home');
                              },
                                  child: Text("Home")),
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                height: 2,
                                width: 35,
                                color: Colors.orange,
                              )
                            ],
                          ),

                          Padding(

                            padding: const EdgeInsets.only(right: 10),

                            child: Column(

                              children: [
                                TextButton(onPressed: (){},
                                    child: Text("Muongozo wa ombi la Passport")),
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 195,
                                  color: Colors.orange,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ExpandableText("Mfumo wa Passport",style: TextStyle(fontSize: 12.0,color: Colors.teal),
                                collapseText: 'show less',
                                expandText: 'Show More',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ExpandableText("Hii ni huduma mpya inayomuwezesha muombaji kujaza Fomu ya Maombi ya Pasipoti kwa njia ya Kielektroniki akiwa mahali popote. Baada ya kujaza fomu hiyo, atatakiwa kuichapisha (Print) na kuiwasilisha pamoja na vielelezo vingine katika Ofisi ya Uhamiaji iliyo karibu naye kwa ajili ya kushughulikiwa maombi yake ya Pasipoti.",style: TextStyle(fontSize: 11.0),
                                collapseText: 'show less',
                                expandText: 'Show More',
                                maxLines: 1,
                                linkColor: Colors.red,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left: 80),
                              child: Text("Chagua Huduma >>>"),
                            ),
                            SizedBox(height: 10,),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 8.0,left: 20),
                            //   child: ElevatedButton(onPressed: (){
                            //
                            //   }, child: Text("Ombi Jipya")),
                            // )
                            Container(

                                 child: Row(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         Navigator.pushNamed(context, 'add_screen');
                                       },
                                       child: Container(
                                             height: 140,
                                             width: 90,
                                             decoration: BoxDecoration(
                                               color: Colors.white,
                                               borderRadius: BorderRadius.circular(5.0),
                                               boxShadow: [
                                                 new BoxShadow(
                                                   color: Color(0xff368983).withOpacity(0.3),
                                                   offset: new Offset(-10, 0.0),
                                                   blurRadius: 20.0,
                                                   spreadRadius: 4.0
                                                 )
                                               ]

                                             ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 2,left:10),
                                                    child: Text("Ombi Jipya",style: TextStyle(color: Colors.teal,fontSize: 12),),
                                                  ),
                                                  SizedBox(height: 4,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top:2,left: 2,right: 2),
                                                    child: Text("Kwa Mwombaji anayeanza kujaza fomu ya maombi ya Pasipoti kwa njia ya kielektroniki kwa mara ya kwanza (hata kama alishawahi kuwa na pasipoti)",style: TextStyle(color: Colors.black,fontSize: 9),),
                                                  ),
                                                ],
                                              ),

                                           ),
                                     ),
                                     SizedBox(width: 5,),
                                     InkWell(
                                       onTap: (){
                                         Navigator.pushNamed(context, 'endeleza');
                                       },
                                       child: Container(
                                         height: 140,
                                         width: 90,
                                         decoration: BoxDecoration(
                                           color: Colors.teal,
                                           borderRadius: BorderRadius.circular(5.0),


                                         ),
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Padding(
                                               padding: const EdgeInsets.only(top: 2,left:5),
                                               child: Text("Endeleza Ombi",style: TextStyle(color: Colors.white,fontSize: 12),),
                                             ),
                                             SizedBox(height: 4,),
                                             Padding(
                                               padding: const EdgeInsets.only(top:2,left: 2,right: 2),
                                               child: Text("Kwa Mwombaji ambaye alishajaza fomu ya maombi ya pasipoti kwa njia ya kielktroniki na kufikia hatua ya kupatiwa Namba ya Ombi.)",style: TextStyle(color: Colors.black,fontSize: 9),),
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                     SizedBox(width: 5,),
                                     InkWell(
                                       onTap: (){
                                         Navigator.pushNamed(context, 'ufuatiliaji');
                                       },
                                       child: Container(

                                         height: 140,
                                         width: 90,
                                         decoration: BoxDecoration(
                                             color: Colors.white,
                                             borderRadius: BorderRadius.circular(5.0),
                                             boxShadow: [
                                               new BoxShadow(
                                                   color: Color(0xff368983).withOpacity(0.3),
                                                   offset: new Offset(10, 0.0),
                                                   blurRadius: 20.0,
                                                   spreadRadius: 4.0
                                               )
                                             ]

                                         ),
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Padding(
                                               padding: const EdgeInsets.only(top: 2,left:10),
                                               child: Text("Ufuatiliaji wa Ombi",style: TextStyle(color: Colors.teal,fontSize: 12),),
                                             ),
                                             SizedBox(height: 4,),
                                             Padding(
                                               padding: const EdgeInsets.only(top:2,left: 2,right: 2),
                                               child: Text("Kwa Mwombaji ambaye alishajaza fomu ya maombi ya pasipoti kwa njia ya kielktroniki na kufikia hatua ya kupatiwa Namba ya Ombi.)",style: TextStyle(color: Colors.black,fontSize: 9),),
                                             ),
                                           ],
                                         ),

                                       ),
                                     ),

                                   ],
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

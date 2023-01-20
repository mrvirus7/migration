import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import 'config/Palette.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final double _borderRadius=0.0;
  bool isSignupScreen =true;
  bool isRememberMe =false;
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

                color: Color(0xFF3b5999).withOpacity(.80),
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

                            padding: const EdgeInsets.only(right: 0),

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
                              height: 60,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context, 'ombi_jipya');
                                    },
                                    child: Container(
                                      child: AspectRatio(aspectRatio: 2.4 /1,
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          child: Row(
                                            children:<Widget> [
                                              Container(
                                                width: 55,
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(15),
                                                    color: Color.fromRGBO(97, 53, 105, 1)
                                                ),
                                                // child: Icon(
                                                //   Icons.filter_drama_sharp,
                                                //   color: Colors.lightBlue,
                                                //   size: 30,
                                                // ),
                                                child:Image.asset('assets/images/r.png'),
                                                // child: Row(
                                                //   children: [
                                                //     Container(
                                                //       width: 56,
                                                //       padding: EdgeInsets.all(10),
                                                //       decoration: BoxDecoration(
                                                //         borderRadius: BorderRadius.circular(10),
                                                //         color: Color.fromRGBO(251, 53, 105, 1)
                                                //       ),
                                                //
                                                //     ),
                                                //
                                                //   ],
                                                // ),
                                              ),
                                              SizedBox(width: 10,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10.0),
                                                    child: Text("Ombi Jipya",style: TextStyle(fontSize: 10,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                                                  ),


                                                ],
                                              )

                                            ],
                                          ),
                                        ),


                                      ),
                                    ),
                                  ),

                                  InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context, 'endeleza_ombi');
                                    },
                                    child: Container(
                                      child: AspectRatio(aspectRatio: 2.7/1,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5),
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          child: Row(
                                            children:<Widget> [
                                              Container(
                                                width: 56,
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(15),
                                                    color: Color.fromRGBO(97, 53, 105, 1)
                                                ),
                                                // child: Icon(
                                                //   Icons.filter_drama_sharp,
                                                //   color: Colors.lightBlue,
                                                //   size: 30,
                                                // ),
                                                child:Image.asset('assets/images/r.png'),
                                                // child: Row(
                                                //   children: [
                                                //     Container(
                                                //       width: 56,
                                                //       padding: EdgeInsets.all(10),
                                                //       decoration: BoxDecoration(
                                                //         borderRadius: BorderRadius.circular(10),
                                                //         color: Color.fromRGBO(251, 53, 105, 1)
                                                //       ),
                                                //
                                                //     ),
                                                //
                                                //   ],
                                                // ),
                                              ),
                                              SizedBox(width: 10,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Text("Endeleza Ombi",style: TextStyle(fontSize: 10,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                                                  ),


                                                ],
                                              ),


                                            ],
                                          ),

                                        ),

                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context, 'ufuatiliaji_ombi');
                                    },
                                    child: Container(
                                      child: AspectRatio(aspectRatio: 2.9 /1,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5),
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey),
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          child: Row(
                                            children:<Widget> [
                                              Container(
                                                width: 56,
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(15),
                                                    color: Color.fromRGBO(97, 53, 105, 1)
                                                ),
                                                // child: Icon(
                                                //   Icons.filter_drama_sharp,
                                                //   color: Colors.lightBlue,
                                                //   size: 30,
                                                // ),
                                                child:Image.asset('assets/images/r.png'),
                                                // child: Row(
                                                //   children: [
                                                //     Container(
                                                //       width: 56,
                                                //       padding: EdgeInsets.all(10),
                                                //       decoration: BoxDecoration(
                                                //         borderRadius: BorderRadius.circular(10),
                                                //         color: Color.fromRGBO(251, 53, 105, 1)
                                                //       ),
                                                //
                                                //     ),
                                                //
                                                //   ],
                                                // ),
                                              ),
                                              SizedBox(width: 10,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(top: 10.0),
                                                      child: Text("Ufuatiliaji Ombi",style: TextStyle(fontSize: 10,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                                                    ),
                                                  ),


                                                ],
                                              ),


                                            ],
                                          ),

                                        ),

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

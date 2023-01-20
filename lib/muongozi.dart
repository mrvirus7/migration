import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import 'config/Palette.dart';

class Muongozo extends StatefulWidget {
  const Muongozo({Key? key}) : super(key: key);

  @override
  State<Muongozo> createState() => _MuongozoState();
}

class _MuongozoState extends State<Muongozo> {
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
              top: 170,
              child: Container(
                height: 425,
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
                              child: Text("VIELELEZO VINAVYOHITAJIKA WAKATI WA UJAZAJI WA FOMU YA MAOMBI YA PASIPOTI",style: TextStyle(fontSize: 15.0,color: Colors.teal),

                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("1. Cheti cha Kuzaliwa Mwombaji\n"
                                  "2. Cheti/Kiapo cha Kuzaliwa Mzazi wa Mwombaji\n"
                                  "3. Kitambulisho cha Taifa \n 4. Picha ya Mwombaji ya hivi karibuni yenye kivuli cha rangi ya buluu isiyokoza (Light blue Background)\n"
                                "5. Ada ya Fomu Tsh 20,000 \n 6. Ushahidi wa Safari au Ushahidi wa Shughuli anayofanya Mwombaji.",style: TextStyle(fontSize: 11.0),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("JINSI YA KUJAZA FOMU YA MAOMBI YA PASIPOTI",style: TextStyle(fontSize: 11.0,color: Colors.teal),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("1. Bofya Anza kujaza fomu, kwa Ombi Jipya\n"
                                  "2. Bofya ENDELEA ili kuendelea na Ombi ambalo halikufikia mwisho"
                                  "Utahitajika Kujaza Namba ya Utambulisho (Rfeference ID) wa Ombi lako na Namba ya Ombi (Application Number) husika\n"
                  "3. Jaza Taarifa zako sahihi kwa ukamilifu\n"
                 "4. Hifadhi Namba yako ya Utambulisho (Application ID) kwa matumizi ya baadaye.\n"
          "5. Jaza Taarifa za Pasipoti ya zamani (ikiwa uliwahi kuwa na pasipoti)\n"
        "6. Jaza Taarifa za Wadhamini na Watu ambao ungependa wapewe taarifa endapo utatakewa na tatizo lolote\n"
    "7. Ambatanisha Vielelezo vyote vinavyohitajika (kwa kuzingatia maelekezo)\n"
    "8. Hakiki Taarifa zako zote na kisha bofya kukubaliana nazo ikiwa ziko sahihi\n"
    "9. Lipia fomu yako baada ya kupatiwa Namba ya Kumbukumbu ya Malipo (Control Number)",style: TextStyle(fontSize: 11.0),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Kitufe cha Kufuatilia Hali (Status) ya Ombi kinakuwezesha kufuatilia Ombi lako limefikia hatua gani",style: TextStyle(fontSize: 11.0,color: Colors.teal),

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

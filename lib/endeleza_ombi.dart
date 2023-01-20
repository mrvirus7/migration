import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Endeleza extends StatefulWidget {
  const Endeleza({Key? key}) : super(key: key);

  @override
  State<Endeleza> createState() => _EndelezaState();
}

class _EndelezaState extends State<Endeleza> {
  final _formKey = GlobalKey<FormState>();
  // String name="";

  TextEditingController fname = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            background_container(context),
            Positioned(
              top: 120,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),


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
                              TextButton(onPressed: (){
                                Navigator.pushNamed(context, 'muongozo');
                              },
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
                    SizedBox(height: 1,),

                    Padding(
                      padding: const EdgeInsets.only(top: 2,left: 5,right: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 5),
                            child: ExpandableText("Endelea Na Ombi",style: TextStyle(fontSize: 14.0,color: Colors.teal,fontWeight: FontWeight.bold),
                              collapseText: 'show less',
                              expandText: 'Show More',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ExpandableText("Ili kuweza kuendelea na Ombi lako ulilofanyia maombi \n  ya kwenye mfumo huu wa mtandao, tafadhari weka namba ya Ombi yako sambamba na taarifa za msingi ulizojaza  wakati unfanya ombi lako ",style: TextStyle(fontSize: 12.0),
                              collapseText: 'show less',
                              expandText: 'Show More',
                              maxLines: 1,
                              linkColor: Colors.red,
                            ),
                          ),


                        ],
                      ),
                    ),

                    Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 1,),
                            Text("Taarifa Za Msingi",style: TextStyle(fontSize: 14,color: Colors.teal,fontWeight: FontWeight.w500),),
                            SizedBox(height:5),
                            TextFormField(
                              controller: fname,
                              decoration: InputDecoration(

                                  labelText: "Number Ya Utambulisho *"
                              ),
                              validator: (value){
                                if(value!.isEmpty || !RegExp(r'^[a-z A-Z 0-9]+$').hasMatch(value!)){
                                  return "Number ya  Utambulisho ni lazima";
                                }else{
                                  return null;
                                }
                              },
                            ),
                            SizedBox(height:10),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),

                                child: Stack(
                                  children: [
                                    IntlPhoneField(
                                      decoration: InputDecoration(
                                        labelText: 'Phone Number',
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                      ),
                                      initialCountryCode: 'TZ',
                                      onChanged: (phone) {
                                        print(phone.completeNumber);
                                      },
                                    )

                                  ],
                                ),
                              ),
                            ),


                            SizedBox(height: 10,),

                            Row(
                              children: [

                                TextButton(
                                  style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.green,
                                      textStyle: TextStyle(fontSize: 18)

                                  ),
                                  onPressed: (){
                                    if (_formKey.currentState!.validate()) {
                                      // showDialog(
                                      //   context: context,
                                      //   builder: (BuildContext context) {
                                      //     return AlertDialog(
                                      //       title: new Text(
                                      //         'Your Data is Correctly',
                                      //       ),
                                      //       actions: <Widget>[
                                      //         TextButton(
                                      //           child: new Text("OK"),
                                      //           onPressed: () {
                                      //             Navigator.of(context).pop();
                                      //           },
                                      //         ),
                                      //       ],
                                      //     );
                                      //   },
                                      // );


                                    }

                                  },
                                  child: Text('Endelea na Ombi >>',),),
                                SizedBox(width: 10,),


                              ],
                            ),
                           





                          ],
                        ),
                      ),
                    ),


                  ],
                ),


                height: 550,
                width: 340,
              ),
            )
          ],
        ),
      ),
    );
  }
  Column background_container(BuildContext context){
    return  Column(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
            color: Color(0xff368983),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap:(){
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back,color: Colors.white,)),
                    Text('Taarifa Muhimu',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

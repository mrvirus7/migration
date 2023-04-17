import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Kidokezo extends StatefulWidget {
  const Kidokezo({Key? key}) : super(key: key);

  @override
  State<Kidokezo> createState() => _KidokezoState();
}

class _KidokezoState extends State<Kidokezo> {
  String dropdownvalue = 'Ombi Jipya';
  var items =  ['Ombi Jipya','Pasipoti imejaa/Kupata Pasipoti ya Kielektronic','Pasipoti iliyopotea','Kuharibika'];

  String dropdownvalues = 'Nchini Tanzania';
  var eneo =  ['Nchini Tanzania','Nje ya Nchi (UBALOZINI)'];

  String dropdown = 'Tanzania Bara';
  var nchi =  ['Tanzania Bara','Zanzibar'];



  final _formKey = GlobalKey<FormState>();
  // String name="";

  TextEditingController fname = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  late String valueChoose;
  List listIterm=[
    "iterm1", "iterm 2", "iterm 3", "iterm 4"
  ];
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
                              Navigator.pushNamed(context, 'homepage');
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
                            child: ExpandableText("Kidokezo Muhimu",style: TextStyle(fontSize: 14.0,color: Colors.teal),
                              collapseText: 'show less',
                              expandText: 'Show More',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Tafadhali hifadhi Namba ya Utambulisho (Reference ID) sehemu salama, kwani itahitajika pindi Mwombaji atakapohitaji KUENDELEA na Ombi lake hapo baadae."
                                "Aidha, Namba hiyo itahitajika pia endapo kutatokea tatizo la kukatika kwa mawasiliano wakati Mwombaji anajaza fomu, au ikiwa anahitaji kukatisha ujazaji wa fomu yake kwa sasa, na kuendelea kutoka pale alipoishia hapo baadaye.",style: TextStyle(fontSize: 12.0),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Namba ya Utambulisho",style: TextStyle(fontSize: 12.0,color: Colors.teal),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Namba ya Utambulisho wako",style: TextStyle(fontSize: 11.0),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("22JX-C12R-GF01",style: TextStyle(fontSize: 11.0),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Tarehe",style: TextStyle(fontSize: 11.0),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("01st December, 2022",style: TextStyle(fontSize: 11.0),

                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 160),
                      child: Row(
                        children: [

                          TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.teal,
                                textStyle: TextStyle(fontSize: 14)

                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, 'stepper_page');

                            },
                            child: Text('Endelea na Ombi >>',),),
                          SizedBox(width: 16,),


                        ],
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

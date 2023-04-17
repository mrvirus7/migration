import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
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


                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                    margin: EdgeInsets.only(top: 1),
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
                                      margin: EdgeInsets.only(top: 1),
                                      height: 2,
                                      width: 195,
                                      color: Colors.orange,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2,),

                          Container(
                            height: 70,
                            width: 300,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,right: 165),
                                  child: Text("Aina Ya Ombi*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: DropdownButton(


                                    value: dropdownvalue,

                                    icon: Icon(
                                      Icons.keyboard_arrow_down,

                                    ),

                                    iconSize: 24,
                                    elevation: 16,
                                    isExpanded: true,
                                    items:items.map((String items) {
                                      return DropdownMenuItem(

                                          value: items,
                                          child: Text(items)
                                      );

                                    }

                                    ).toList(),
                                    onChanged: (String? newValue){
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },

                                  ),
                                ),
                              ],
                            ),
                          ),




                          SizedBox(height:2),
                          Container(
                            height: 90,
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: IntlPhoneField(
                                decoration: InputDecoration(
                                  labelText: 'Phone Number',

                                ),
                                initialCountryCode: 'TZ',
                                onChanged: (phone) {
                                  print(phone.completeNumber);
                                },
                              ),
                            ),
                          ),
                          // TextFormField(
                          //   controller: phone,
                          //   decoration: InputDecoration(
                          //
                          //       labelText: "Enter Your PhoneNumber"
                          //   ),
                          //   validator: (value){
                          //     if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                          //       return "Enter correct PhoneNumber";
                          //     }else{
                          //       return null;
                          //     }
                          //   },
                          // ),

                          SizedBox(height:5),

                          Container(
                            height: 70,
                            width: 300,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 120),
                                  child: Text("Eneo Alipo Muombaji*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: DropdownButton(


                                    value: dropdownvalues,

                                    icon: Icon(
                                      Icons.keyboard_arrow_down,

                                    ),

                                    iconSize: 24,
                                    elevation: 16,
                                    isExpanded: true,
                                    items:eneo.map((String eneo) {
                                      return DropdownMenuItem(

                                          value: eneo,
                                          child: Text(eneo)
                                      );

                                    }

                                    ).toList(),
                                    onChanged: (String? newValue){
                                      setState(() {
                                        dropdownvalues = newValue!;
                                      });
                                    },

                                  ),
                                ),
                              ],
                            ),
                          ),


                          SizedBox(height:10),
                          Container(
                            height: 90,
                            width: 300,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text("Mahali/Ofisi ambapo Ombi litashughulikiwa*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: DropdownButton(


                                    value: dropdown,

                                    icon: Icon(
                                      Icons.keyboard_arrow_down,

                                    ),

                                    iconSize: 24,
                                    elevation: 16,
                                    isExpanded: true,
                                    items:nchi.map((String eneo) {
                                      return DropdownMenuItem(

                                          value: eneo,
                                          child: Text(eneo)
                                      );

                                    }

                                    ).toList(),
                                    onChanged: (String? newValue){
                                      setState(() {
                                        dropdown = newValue!;
                                      });
                                    },

                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 10,),
                          Column(
                            children: [

                              AnimatedButton(
                                text: "Anza Ombi >>>",
                                color: Colors.teal,
                                pressEvent: (){
                                  AwesomeDialog(
                                      context: context,
                                      dialogType: DialogType.success,
                                      animType: AnimType.topSlide,
                                      showCloseIcon: true,
                                      title: "Success",
                                      desc: "Hakikisha unahifadhi kumbukumbu Number Yako",
                                      btnOkOnPress: (){
                                        Navigator.pushNamed(context, 'kidokezo');
                                      },
                                      btnOkColor: Colors.green
                                  ).show();
                                },


                              ),
                            ],
                          ),




                        ],
                      ),
                    ),
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

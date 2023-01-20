import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

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
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                          SizedBox(height:20),

                          Container(
                            height: 70,
                            width: 250,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 155),
                                  child: Text("Aina Ya Ombi*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                ),

                                DropdownButton(


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
                              ],
                            ),
                          ),




                          SizedBox(height:2),
                          IntlPhoneField(
                            decoration: InputDecoration(
                              labelText: 'Phone Number',

                            ),
                            initialCountryCode: 'TZ',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
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

                          SizedBox(height:10),

                          Container(
                            height: 70,
                            width: 250,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 100),
                                  child: Text("Eneo Alipo Muombaji*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                ),

                                DropdownButton(


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
                              ],
                            ),
                          ),


                          SizedBox(height:10),
                          Container(
                            height: 90,
                            width: 250,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text("Mahali/Ofisi ambapo Ombi litashughulikiwa*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                ),

                                DropdownButton(


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
                              ],
                            ),
                          ),

                          SizedBox(height: 20,),
                          Row(
                            children: [

                              TextButton(
                                style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    backgroundColor: Colors.blue,
                                    textStyle: TextStyle(fontSize: 18)

                                ),
                                onPressed: (){
                                  Navigator.pushNamed(context, 'kidokezo');

                                },
                                child: Text('Anza Ombi >>',),),
                              SizedBox(width: 20,),


                            ],
                          ),
                          SizedBox(height: 100,),



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

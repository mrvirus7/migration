import 'package:expandable_text/expandable_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'config/Palette.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {

  DateTime _selectedDate = DateTime.now();
  //taarifa binafsi
  TextEditingController dateCtl = TextEditingController();
  String dropdownvalue = 'Sina Ndoa';
  var items =  ['Sina Ndoa','Nna Ndoa','Mtalaka','Mfiwa'];

  String dropdownvalues = 'Mume';
  var jinsia =  ['Mume','Mke'];

  String dropdown = 'Tanzania Bara';
  var nchi =  ['Tanzania Bara','Zanzibar'];



  // final _formKey = GlobalKey<FormState>();
  // final _formKey1 = GlobalKey<FormState>();
  // final _formKey2 = GlobalKey<FormState>();

  List<GlobalKey<FormState>> formkeys = [
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
  ];

  // String name="";

  TextEditingController fname = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController phones = new TextEditingController();
  TextEditingController nchiunayokwenda = new TextEditingController();
  TextEditingController JinaKamili = new TextEditingController();
  var _userDate=TextEditingController();
  var _babaDate=TextEditingController();
  var _mamaDate=TextEditingController();

  late String valueChoose;
  List listIterm=[
    "iterm1", "iterm 2", "iterm 3", "iterm 4"
  ];
  @override
  void initState() {
    _userDate.text = "";
    _babaDate.text="";
    _mamaDate.text="";//set the initial value of text field
    super.initState();
  }

  //step
  int _activeStepIndex =0;
  List<Step> stepList()=>[
    Step(

      state: _activeStepIndex <= 0 ?StepState.editing : StepState.complete,
      isActive:_activeStepIndex >=0,
      title: const Text('1'),
      content: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)
            )
        ),
        child: SingleChildScrollView(

          child: Form(
            key: formkeys[0],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 1,),
                Text("Taarifa Binafsi",style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.w500),),

                SizedBox(height:2),
                TextFormField(
                  validator: (value){

                    if(value == null || value.isEmpty){
                      return 'Input Not Empty';
                    }
                    return null;
                  },
                  controller: phone,
                  decoration: InputDecoration(

                      labelText: "Andika Jinalako kwa Ukamilifu"
                  ),
                  // validator: (value){
                  //   if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                  //     return "Enter correct FullName";
                  //   }else{
                  //     return null;
                  //   }
                  // },
                ),
                SizedBox(height: 10,),

                Container(
                  height: 80,
                  width: 250,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 210),
                        child: Text("Jinsi*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),

                      DropdownButton(


                        value: dropdownvalues,

                        icon: Icon(
                          Icons.keyboard_arrow_down,

                        ),

                        iconSize: 24,
                        elevation: 16,
                        isExpanded: true,
                        items:jinsia.map((String jinsia) {
                          return DropdownMenuItem(

                              value: jinsia,
                              child: Text(jinsia)
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
                SizedBox(height:2),
                Container(
                  height: 80,
                  width: 250,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Text("Habari Za Ndoa",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
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
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Habari Za kazi"
                  ),
                  // validator: (value){
                  //   if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                  //     return "Enter correct PhoneNumber";
                  //   }else{
                  //     return null;
                  //   }
                  // },
                ),
                SizedBox(height: 10,),

                Text("Utambulisho",style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.bold ),),
                Divider(color:Colors.blue,height: 5,),


                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Namba Ya Uraia"
                  ),
                  // validator: (value){
                  //   if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                  //     return "Enter correct PhoneNumber";
                  //   }else{
                  //     return null;
                  //   }
                  // },
                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Kitambulisho cha Mzanzibari Mkaazi"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Picha Ya Muombaji"
                  ),
                  // validator: (value){
                  //   if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                  //     return "Enter correct PhoneNumber";
                  //   }else{
                  //     return null;
                  //   }
                  // },
                ),
                SizedBox(height:10),
                Text("Tarehe Na Mahali Pa Kuzaliwa",style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.bold ),),
                Divider(color:Colors.blue,height: 5,),
                Divider(color:Colors.blue,height: 5,),
                SizedBox(height: 2,),
                TextField(
                  controller: _userDate,
                  //editing controller of this TextField
                  decoration: InputDecoration(
                    // errorText: _validateDate ? 'Value Can\'t Be Empty': null,

                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                  ),
                  readOnly: true,
                  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2100));

                    if (pickedDate != null) {
                      // print(
                      // pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(
                          formattedDate); //formatted date output using intl package =>  2021-03-16
                      setState(() {
                        _userDate.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {}
                  },
                ),
                SizedBox(height: 2,),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Nchi*"
                  ),
                  // validator: (value){
                  //   if(value!.isEmpty || !RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value!)){
                  //     return "Enter correct PhoneNumber";
                  //   }else{
                  //     return null;
                  //   }
                  // },
                ),
                SizedBox(height:2),
                Container(
                  height: 80,
                  width: 250,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 160),
                        child: Text("Chagua Eneo*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                      ),

                      DropdownButton(


                        value: dropdown,

                        icon: Icon(
                          Icons.keyboard_arrow_down,

                        ),

                        iconSize: 24,
                        elevation: 16,
                        isExpanded: true,
                        items:nchi.map((String nchi) {
                          return DropdownMenuItem(

                              value: nchi,
                              child: Text(nchi)
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
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Mkoa*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Wilaya*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Kata/Shehia*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Mtaa/Kijiji*"
                  ),

                ),






              ],
            ),
          ),

        ),
      ),

    ),
    Step(
      state: _activeStepIndex <= 1 ?StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 1,
      title: const Text('2'),
      content: Container(
        padding: EdgeInsets.only(top: 10,left: 30,right: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)
            )
        ),
        child: SingleChildScrollView(

          child: Form(
            key: formkeys[1],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height:10),
                Text("Mawasiliano",style: TextStyle(fontSize: 20,color:Colors.green,fontWeight: FontWeight.bold ),),


                SizedBox(height: 10,),

                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Sanduku La Posta"
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
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Barua Pepe"
                  ),

                ),
                SizedBox(height:10),
                Text("Anuwani Ya Makazi",style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.bold ),),
                Divider(color:Colors.blue,height: 5,),

                SizedBox(height: 10,),

                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Mkoa*"
                  ),

                ),




                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Wilaya*"
                  ),

                ),

                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Mtaa/Kijiji*"
                  ),

                ),

                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Nyumba Namber"
                  ),

                ),



                // SizedBox(height: 20,),
                // Row(
                //   children: [
                //
                //     TextButton(
                //       style: TextButton.styleFrom(
                //           primary: Colors.white,
                //           backgroundColor: Colors.blue,
                //           textStyle: TextStyle(fontSize: 18)
                //
                //       ),
                //       onPressed: (){
                //         Navigator.pushNamed(context, 'habari_wazazi');
                //
                //       },
                //       child: Text('Hifadhi Na Endelea >>',),),
                //     SizedBox(width: 20,),
                //
                //
                //   ],
                // ),
                // SizedBox(height: 100,),



              ],
            ),
          ),

        ),
      ), ),
    Step(
      state: _activeStepIndex <= 2 ?StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 2,
      title: const Text('3'),
      content: Container(
        padding: EdgeInsets.only(top: 10,left: 30,right: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)
            )
        ),
        child: SingleChildScrollView(

          child: Form(
            key: formkeys[2],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Habari Za Wazazi",style: TextStyle(fontSize: 24,color:Colors.green,fontWeight: FontWeight.bold ),),
                ),

                SizedBox(height:20),
                Text("Habari Za Baba",style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.bold ),),
                Divider(color:Colors.blue,height: 5,),

                SizedBox(height: 10,),

                TextFormField(
                  validator: (value){

                    if(value == null || value.isEmpty){
                      return 'Input Not Empty';
                    }
                    return null;
                  },
                  controller: fname,

                  decoration: InputDecoration(

                      labelText: "Jina Kamili*"
                  ),

                ),
                SizedBox(height:2),
                TextField(
                  controller: _babaDate,
                  //editing controller of this TextField
                  decoration: InputDecoration(
                    // errorText: _validateDate ? 'Value Can\'t Be Empty': null,

                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                  ),
                  readOnly: true,
                  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1930),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2030));

                    if (pickedDate != null) {
                      // print(
                      // pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(
                          formattedDate); //formatted date output using intl package =>  2021-03-16
                      setState(() {
                        _babaDate.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {}
                  },
                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Nchi*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Eneo*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Mkoa*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Wilaya*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Kata/Shehia*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Mtaa/Kijiji*"
                  ),

                ),
                SizedBox(height:10),
                Text("Habari Za Mama",style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.bold ),),
                Divider(color:Colors.blue,height: 5,),
                Divider(color:Colors.blue,height: 5,),
                SizedBox(height: 10,),

                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Jina Kamili*"
                  ),

                ),
                SizedBox(height:2),
                TextField(
                  controller: _mamaDate,
                  //editing controller of this TextField
                  decoration: InputDecoration(
                    // errorText: _validateDate ? 'Value Can\'t Be Empty': null,

                      icon: Icon(Icons.calendar_today), //icon of text field
                      labelText: "Enter Date" //label text of field
                  ),
                  readOnly: true,
                  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2030));

                    if (pickedDate != null) {
                      // print(
                      // pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(
                          formattedDate); //formatted date output using intl package =>  2021-03-16
                      setState(() {
                        _mamaDate.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {}
                  },
                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Nchi*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Eneo*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Mkoa*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Wilaya*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Kata/Shehia*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Mtaa/Kijiji*"
                  ),

                ),

              ],
            ),
          ),

        ),
      ),),
    Step(
      state: _activeStepIndex <= 3 ?StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 3,
      title: const Text('4'),
      content: Container(
        padding: EdgeInsets.only(top: 10,left: 30,right: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)
            )
        ),
        child: SingleChildScrollView(

          child: Form(
            key: formkeys[3],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Text("Madhumuni Ya Safari",style: TextStyle(fontSize: 22,color:Colors.green,fontWeight: FontWeight.bold ),),

                SizedBox(height: 20,),

                Container(
                  height: 70,
                  width: 250,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 105),
                        child: Text("Dhumuni La Safari*",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
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
                TextFormField(
                  validator: (value){

                    if(value == null || value.isEmpty){
                      return 'Input Not Empty';
                    }
                    return null;
                  },
                  controller: nchiunayokwenda,

                  decoration: InputDecoration(

                      labelText: "Nchi Unayokwenda*"
                  ),

                ),


                SizedBox(height:10),
                Text("Habari za Mlezi",style: TextStyle(fontSize: 18,color:Colors.blue,fontWeight: FontWeight.bold ),),
                Divider(color:Colors.blue,height: 5,),

                SizedBox(height: 10,),

                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Jina Kamili*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Kazi*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Anuwani*"
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
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Uhusiano*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Namber Ya Cheti*"
                  ),

                ),

              ],
            ),
          ),

        ),
      ),),


    Step(
      state: _activeStepIndex <= 4 ?StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 4,
      title: const Text('5'),
      content: Container(
        padding: EdgeInsets.only(top: 10,left: 30,right: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)
            )
        ),
        child: SingleChildScrollView(

          child: Form(
            key: formkeys[4],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Watu Wa Dharura",style: TextStyle(fontSize: 22,color:Colors.green,fontWeight: FontWeight.bold ),),
                ),

                SizedBox(height:20),
                Text("Mtu wa Kwanza Wakati wa Dharura",style: TextStyle(fontSize: 14,color:Colors.blue,fontWeight: FontWeight.bold ),),
                Divider(color:Colors.blue,height: 5,),

                SizedBox(height: 10,),

                TextFormField(
                  validator: (value){

                    if(value == null || value.isEmpty){
                      return 'Input Not Empty';
                    }
                    return null;
                  },
                  controller: JinaKamili,

                  decoration: InputDecoration(

                      labelText: "Jina Kamili*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Kazi*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Sanduku La Posta*"
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
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Mji*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Mtaa*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Uhusiano*"
                  ),

                ),

                SizedBox(height:10),
                Text("Mtu wa Pili wakati wa Dharura",style: TextStyle(fontSize: 14,color:Colors.blue,fontWeight: FontWeight.bold ),),
                Divider(color:Colors.blue,height: 5,),
                Divider(color:Colors.blue,height: 5,),
                SizedBox(height: 10,),

                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Jina Kamili*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Kazi*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Sanduku La Posta*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Simu Ya Mkononi*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Mji*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Mtaa*"
                  ),

                ),
                SizedBox(height:2),
                TextFormField(

                  decoration: InputDecoration(

                      labelText: "Uhusiano*"
                  ),

                ),

              ],
            ),
          ),

        ),
      ),),
    Step(
      state: _activeStepIndex <= 5 ?StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 5,
      title: const Text('6'),

      content: Container(
        padding: EdgeInsets.only(top: 10,left: 30,right: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)
            )
        ),
        child: SingleChildScrollView(

          child: Form(
            key: formkeys[5],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Viambatanisho",style: TextStyle(fontSize: 22,color:Colors.green,fontWeight: FontWeight.bold ),),
                ),
                Divider(color:Colors.blue,height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Aina za Kiambatanisho"),
                    Text("Hali")
                  ],
                ),
                Divider(color:Colors.blue,height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cheti/Kiapo cha Mzazi"),
                    ElevatedButton(
                      child: Text('Weka'),
                      onPressed: ()async{
                        final result=await FilePicker.platform.pickFiles();
                        if(result == null)
                          return;
                        final file =result.files.first;
                        print('Name: ${file.name}');
                        print('Bytes: ${file.bytes}');
                        print('Size: ${file.size}');
                        print('Extension: ${file.extension}');
                        print('Path: ${file.path}');

                        // openFile(file);

                      },
                    ),
                  ],
                ),
                Divider(color:Colors.blue,height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cheti/Kiapo cha Muombaji "),
                     ElevatedButton(
                      child: Text('Weka'),
                      onPressed: ()async{
                        final result=await FilePicker.platform.pickFiles();
                        if(result == null)
                          return;
                        final file =result.files.first;
                        print('Name: ${file.name}');
                        print('Bytes: ${file.bytes}');
                        print('Size: ${file.size}');
                        print('Extension: ${file.extension}');
                        print('Path: ${file.path}');

                        // openFile(file);

                      },
                    ),
                  ],
                ),
                Divider(color:Colors.blue,height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kitambulisho Cha Kazi"),
                    ElevatedButton(
                      child: Text('Weka'),
                      onPressed: ()async{
                        final result=await FilePicker.platform.pickFiles();
                        if(result == null)
                          return;
                        final file =result.files.first;
                        print('Name: ${file.name}');
                        print('Bytes: ${file.bytes}');
                        print('Size: ${file.size}');
                        print('Extension: ${file.extension}');
                        print('Path: ${file.path}');

                        // openFile(file);

                      },
                    ),
                  ],
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExpandableText("Nakala Halisi za Viamabatanisho vifuatavyo vinaweza kuhitajika wakati wa kuwasilisha Ombi Lako.",style: TextStyle(fontSize: 12.0,color: Colors.teal),
                          collapseText: 'show less',
                          expandText: 'Show More',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExpandableText("1. Barua kutoka kwa Afisa Mtendaji wa Kata/Mtaa kwa asiyeajiriwa \n 2. Barua kutoka kwa Afisa Mtendaji wa Kata/Mtaa kwa mzazi?Mlezi asiyeajiriwa 3. Barua ya Mwaliko 4.Barua ya Utambulisho toka kwa Mwajiri 5. Cheti cha Kuzaliwa cha babu/bibi wa mwombaji 6. Cheti cha Ndoa 7. Cheti cha Tajnisi cha mwombaji au Mzazi wa Mwombaji aliyepata uraia wa Tajinisi (Natualisation) 8. Cheti/Kiapo cha Kuzaliwa cha Mzazi wa Mwombaji 9. Cheti/Kiapo cha Kuzaliwa Mwombaji 10. Hati ya Dhamana 11. Kadi ya Mpiga Kura ya Mzazi/Mlezi 12. Kitambulisho cha Kazi cha Mzazi/Mlezi 13. Kitambulisho cha Kazi na Barua ya Ombi la Pasipoti toka Kwa Mwajiri(Kwa Walioajiriwa) au Barua ya Utambulisho toka Serikali ya Mtaa/Afisa Mtendaji wa Kata 14. Kitambulisho cha Taifa cha Mzazi/Mlezi 15. Tiketi ya kurudi ya ndege 16. Ushahidi wa Uraia wa Mzazi 17. Uthibitisho wa ridhaa ya Mwajiri 18. Uthibitisho wa ridhaa ya Mzazi/Mlezi 19. Uthibitisho wa ridhaa ya Mzazi/Mlezi 20. Vielelezo vya Safari ",style: TextStyle(fontSize: 11.0),
                          collapseText: 'show less',
                          expandText: 'Show More',
                          maxLines: 1,
                          linkColor: Colors.red,
                        ),
                      ),

                    ],
                  ),
                ),


              ],
            ),
          ),

        ),
      ),),

    Step(
        state: StepState.complete,
        isActive: _activeStepIndex >= 6,

        title: const Text('7'),
        content: const Center(
          child: Text("ZINGATIA: \n \n Tafadhali hakiki kwa makini taarifa ulizojaza kabla ya kuzithibitisha. \n Kumbuka, hautoweza kubadilisha taarifa yoyote baada ya. kuvuka hatua hii.",style: TextStyle(color: Colors.red),),
        )),

  ];
  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Palette.backgroundColor,

      body: Column(
        children: [
          Container(
            height: 100,
            width: 600,
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
                    padding: const EdgeInsets.only(top: 20.0,right: 14),
                    child: Image.asset(
                      'assets/images/umoja.png',
                      height: 50.0,
                      width: 50.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,right: 10),
                    child: Text("e-Immigration Portal",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),

                ],
              ),
            ),



          ),


          Expanded(child:
          SingleChildScrollView(





              child: Container(
                height: 610,

                margin: EdgeInsets.symmetric(horizontal: 1),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(1),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5
                      ),
                    ]
                ),



                child: Stepper(
                  margin:EdgeInsets.only(left: 0,right: 0),
                  type: StepperType.horizontal,

                  currentStep: _activeStepIndex,
                  steps: stepList(),
                  onStepContinue: (){
                    if(!formkeys[_activeStepIndex].currentState!.validate()){
                      return;
                    }

                    if(_activeStepIndex <(stepList().length-1)){
                      _activeStepIndex +=1;
                    }
                    setState(() {

                    });

                  },
                  onStepCancel: (){
                    if(_activeStepIndex == 0){
                      return;
                    }
                    _activeStepIndex -=1;
                    setState(() {

                    });
                  },
                ),



              ),




          )),
          SizedBox(height: 1,),

          // Positioned(
          //
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //
          //   child: Container(
          //     margin: EdgeInsets.only(top: 20),
          //     height: 50,
          //     width: 400,
          //
          //     decoration: BoxDecoration(
          //
          //     ),
          //     child: Container(
          //
          //       color: Color(0xFF3b5999).withOpacity(.80),
          //       child: Column(
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.only(top: 1.0,right: 14),
          //
          //
          //             child:  TextButton(onPressed: (){},
          //                 child: Text("passporttanzania@immagration.go.tz",style: TextStyle(color: Colors.white),)),
          //
          //
          //
          //           ),
          //
          //
          //         ],
          //       ),
          //     ),
          //   ),
          // )


        ],

      ),


    );
  }
}

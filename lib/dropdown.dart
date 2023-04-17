import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String value = "";
  bool disabledropdown = true;
  List<DropdownMenuItem<String>> menuitems = [];
  final Web = {
    "1" : "PHP",
    "2" : "Python",
    "3" : "Node",
  };
  final Mobile = {
    "1" : "Java",
    "2" : "Flutter",
    "3" : "React Native",
  };
  final Desktop = {
    "1" : "Java",
    "2" : "Python",
    "3" : "C# . Net",
  };
 void populateweb(){
   for(String key in Web.keys){
     menuitems.add(DropdownMenuItem<String>(
       value: Web[key],
       child: Center(
         child:Text(
           Web[key]!,
         ),
       ),
     ));
   }

 }
  void populatemobile(){
    for(String key in Mobile.keys){
      menuitems.add(DropdownMenuItem<String>(
        value: Mobile[key],
        child: Center(
          child:Text(
            Mobile[key]!,
          ),
        ),
      ));
    }

  }
  void populatedesktop(){
    for(String key in Desktop.keys){
      menuitems.add(DropdownMenuItem<String>(
        value: Desktop[key],
        child: Center(
          child:Text(
            Desktop[key]!,
          ),
        ),
      ));
    }


  }
  void valuechanged(_value){
   if(_value == "Web"){
     menuitems = [];
     populateweb();
   }
   else if(_value == "Mobile"){
     menuitems= [];
       populatemobile();
   }else if(_value == "Desktop"){
     menuitems= [];
     populatedesktop();
   }
    setState(() {
      value = _value;
      disabledropdown = false;
    });
  }
  void secondvaluechanged(_value){
   setState(() {
     value = _value;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text(
         "Drop down",
       ),centerTitle: true,

     ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(padding: EdgeInsets.all(5.0),
                child: DropdownButton<String>(
                  items: [
                    DropdownMenuItem<String>(
                        value: "Web",
                        child: Center(
                          child: Text("Web"),
                        )
                    ),
                    DropdownMenuItem<String>(
                        value: "Mobile",
                        child: Center(
                          child: Text("Mobile"),
                        )
                    ),
                    DropdownMenuItem<String>(
                        value: "Desktop",
                        child: Center(
                          child: Text("Desktop"),
                        )
                    )
                  ],
                  onChanged: (_value) => valuechanged(_value),
                  hint: Text(
                      "Select Any Field"
                  ),

                  // disabledHint: Text(
                  //   "First Select Any Field"
                  // ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: DropdownButton<String>(
                  items: menuitems,
                  onChanged: disabledropdown ? null : (_value)=>secondvaluechanged(_value),
                  hint: Text(
                    "Select Any Technology"
                  ),
                  disabledHint: Text(
                    "First Select Any Field"
                  ),
                ),
              ),
              Text(
                "$value",
              )
            ],
          ),
        )
    );
  }
}

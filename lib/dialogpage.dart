import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Dialog"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              AnimatedButton(
                text: "Warning Dialog",
                color: Colors.orange,
                pressEvent: (){
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    animType: AnimType.topSlide,
                    showCloseIcon: true,
                    title: "Warning",
                    desc: "This is the description of the awesome dialog",
                   btnCancelOnPress: (){},
                    btnOkOnPress: (){}
                  ).show();
                },


              ),
              SizedBox(height: 16,),
              AnimatedButton(
                text: "Error Dialog",
                color: Colors.red,
                pressEvent: (){
                  AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      title: "Error",
                      desc: "This is the description of the awesome dialog",
                      btnOkOnPress: (){},
                      btnOkColor: Colors.red
                  ).show();
                },


              ),
              SizedBox(height: 16,),
              AnimatedButton(
                text: "Quations Dialog",
                color: Colors.amber,
                pressEvent: (){
                  AwesomeDialog(
                      context: context,
                      dialogType: DialogType.question,
                      animType: AnimType.rightSlide,
                      showCloseIcon: true,
                      title: "Warning",
                      desc: "This is the description of the awesome dialog",
                      btnOkOnPress: (){},
                      btnOkColor: Colors.red
                  ).show();
                },


              ),
              SizedBox(height: 16,),
              AnimatedButton(
                text: "Success Dialog",
                color: Colors.green,
                pressEvent: (){
                  AwesomeDialog(
                      context: context,
                      dialogType: DialogType.success,
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      title: "Success",
                      desc: "This is the description of the awesome dialog",
                      btnOkOnPress: (){},
                      btnOkColor: Colors.green
                  ).show();
                },


              ),
            ],
          ),
        ),
      ),
    );
  }
}

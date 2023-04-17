import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class UploadFile extends StatefulWidget {
  const UploadFile({Key? key}) : super(key: key);

  @override
  State<UploadFile> createState() => _UploadFileState();
}

class _UploadFileState extends State<UploadFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(maxWidth: 400),
        padding: EdgeInsets.all(32),
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text('Pick File'),
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
      ),


    );
  }
}

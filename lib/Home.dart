import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFile();
  }

//  List<File> files = [];
//  Future<List<File>> getFile() async {
//    return files = await FilePicker.getMultiFile(type: FileType.AUDIO);
//  }
  //List<File> files = await FilePicker.getMultiFile(type: FileType.AUDIO);
  //String filePath;

  Map<String, String> filesPaths;
  List<String> allNames;
  Future getFile() async {
    //filePath = await FilePicker.getFilePath(type: FileType.AUDIO);
    filesPaths = await FilePicker.getMultiFilePath(type: FileType.ANY);
  }

  void getName() {
    allNames = filesPaths.keys;
  }

  //List<String> allNames = filesPaths.keys;
  //filePaths = await FilePicker.getMultiFilePath();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Text(allNames[0]),
    )
        //ListView.builder(itemBuilder: (context, index) {
//        return ListView(
//          reverse: true,
//        );
//      }),
        );
  }
}

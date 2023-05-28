import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test1/shared/show_message.dart';
import 'package:test1/shared/style.dart';

class ViewOnBoardPage extends StatefulWidget {
  const ViewOnBoardPage({super.key});

  @override
  State<ViewOnBoardPage> createState() => _ViewOnBoardPageState();
}

class _ViewOnBoardPageState extends State<ViewOnBoardPage> {
  final imagePicker = ImagePicker();
  // List<File> _photos = [];
  List<File> imageFiles = [];
  File? frontLeft;
  File? frontRight;
  File? backLeft;
  File? backRight;
  dynamic base64ImageFL;
  dynamic base64ImageFR;
  dynamic base64ImageBL;
  dynamic base64ImageBR;
  TextEditingController commentC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  File? imageFile;
  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 300,
      // maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  frontLeftPhoto() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imageFile = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 300,
    );

    if (imageFile == null) {
      return;
    }
    setState(() {
      frontLeft = File(imageFile.path);
      final imageByte = frontLeft!.readAsBytesSync();
      base64ImageFL = "data:image/png;base64,${base64Encode(imageByte)}";
      debugPrint("frontLeft${base64ImageFL}");
      // Navigator.of(context).pop();
    });
  }

  frontRightPhoto() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imageFile = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 300,
    );

    if (imageFile == null) {
      return;
    }
    setState(() {
      frontRight = File(imageFile.path);
      final imageByte = frontRight!.readAsBytesSync();
      base64ImageFR = "data:image/png;base64,${base64Encode(imageByte)}";
      debugPrint("frontBack${base64ImageFR}");

      // Navigator.of(context).pop();
    });
  }

  backLeftPhoto() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imageFile = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 300,
    );

    if (imageFile == null) {
      return;
    }
    backLeft = File(imageFile.path);
    final imageByte = backLeft!.readAsBytesSync();
    setState(() {
      base64ImageBL = "data:image/png;base64,${base64Encode(imageByte)}";
      debugPrint("backLeft${base64ImageBL}");

      // Navigator.of(context).pop();
    });
  }

  backRightPhoto() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imageFile = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 300,
    );

    if (imageFile == null) {
      return;
    }
    backRight = File(imageFile.path);
    final imageByte = backRight!.readAsBytesSync();
    setState(() {
      base64ImageBR = "data:image/png;base64,${base64Encode(imageByte)}";
      debugPrint("backRight${base64ImageBR}");

      // Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          // backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "eKar",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  "Please upload clear photos of the vehicle to avoid liability of any damages caused before starting your reservation",
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                      // border: Border.all(
                      //   color: Color.fromARGB(255, 211, 210, 210),
                      // ),
                      // borderRadius: BorderRadius.circular(20),
                      ),
                  height: 350,
                  child: Center(
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 211, 210, 210),
                            ),
                          ),
                          //    color: Colors.pink,
                          child: InkWell(
                            onTap: () {
                              frontLeftPhoto();
                            },
                            child: frontLeft != null
                                ? Image.file(
                                    frontLeft!,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  )
                                : TextButton(
                                    onPressed: () {
                                      frontLeftPhoto();
                                    },
                                    child: const Text(
                                      'Front Left',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 211, 210, 210),
                            ),
                          ),
                          // color: Colors.green,
                          child: InkWell(
                            onTap: () {
                              frontRightPhoto();
                            },
                            child: frontRight != null
                                ? Image.file(
                                    frontRight!,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  )
                                : TextButton(
                                    onPressed: () {
                                      frontRightPhoto();
                                    },
                                    child: const Text(
                                      'Front Right',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 211, 210, 210),
                            ),
                          ),
                          // color: Colors.purple,
                          child: InkWell(
                            onTap: () {
                              backLeftPhoto();
                            },
                            child: backLeft != null
                                ? Image.file(
                                    backLeft!,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  )
                                : TextButton(
                                    onPressed: () {
                                      backLeftPhoto();
                                    },
                                    child: const Text(
                                      'Back Left',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 211, 210, 210),
                            ),
                          ),
                          // color: Colors.red,
                          child: InkWell(
                            onTap: () {
                              backRightPhoto();
                            },
                            child: backRight != null
                                ? Image.file(
                                    backRight!,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  )
                                : TextButton(
                                    onPressed: () {
                                      backRightPhoto();
                                    },
                                    child: const Text(
                                      'Back Right',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                    child: Text(
                      "Leave a comment",
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Form(
                  key: formKey,
                  child: TextFormField(
                    controller: commentC,
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "enter something";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: "Everything looks great!",
                      hintStyle: TextStyle(color: Colors.black54, fontSize: 13),
                      // border: new OutlineInputBorder(
                      //     //  borderRadius: new BorderRadius.circular(10.0),
                      //     //borderSide: new BorderSide(),
                      //     ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: InkWell(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        showMessages(
                            context, "Thank you for choosing ekar.", "");
                      }
                    },
                    child: const Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

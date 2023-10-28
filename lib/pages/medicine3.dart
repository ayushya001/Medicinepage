import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medicalpage/Models/image_fileModels.dart';
import 'package:medicalpage/pages/Showfilepage.dart';
import 'package:medicalpage/pages/congratspage.dart';

import 'package:medicalpage/widget/CustomAppBar.dart';
import 'package:medicalpage/widget/MedicalStoredetails.dart';
import 'package:permission_handler/permission_handler.dart';

class Medicine3 extends StatefulWidget {
  const Medicine3({super.key});

  @override
  State<Medicine3> createState() => _Medicine3State();
}

class _Medicine3State extends State<Medicine3> {
  final ImagePicker _imagePicker = ImagePicker();
  File? selectedFile;
  FilePickerResult? result;
  bool isVisible = true;
  bool addmorevisible = false;


  List<CustomFile> items = [];



  @override
  Widget build(BuildContext context) {





    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: mq.width*0.9,
            child: Column(
              mainAxisSize: MainAxisSize.min,

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Medicalstoredetails(),
                Visibility(
                  visible: isVisible,
                  child: Padding(
                    padding: EdgeInsets.only(top: mq.height*0.03),
                    child:  Container(

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.infinity,
                            height: mq.height*0.05,

                            child: Row(
                              children: [
                                Icon(Icons.cloud_upload,size: 24,
                                  color: Color(0xFF005473),),
                                Padding(
                                  padding: EdgeInsets.only(left: mq.width*0.03),
                                  child: AutoSizeText(
                                    "Medical Prescription",
                                    style: GoogleFonts.roboto(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF005473),
                                    ),
                                    maxLines: 1,

                                  ),
                                ),
                              ],
                            ),

                          ),
                          InkWell(
                            onTap: ()async {
                              _showFileSelectionBottomSheet(context,"+");

                            },
                            child: Padding(
                              padding: EdgeInsets.only(top: mq.height*0.01,bottom: mq.height*0.01),
                              child: Container(
                                height: mq.height*0.16,
                                width: mq.width*0.32,
                                decoration: BoxDecoration(
                                    color:Color(0xFF005473),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                child: Center(
                                  child:  AutoSizeText(
                                    "+",
                                    style: GoogleFonts.roboto(
                                      fontSize: 125,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                    maxLines: 1,

                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: mq.height*0.01),
                            child: AutoSizeText(
                              "Add more Prescription",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                // fontWeight: FontWeight.w500,
                                color: Color(0xFF005473),
                              ),
                              maxLines: 1,

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: addmorevisible,
                  child: ListView.builder(
                    itemCount: items.length, // Number of items you want to display
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(), // Disable scrolling
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShowFilePage(
                                file: items[index],
                              ),
                            ),
                          );


                        },

                        onLongPress: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor:Color(0xFF005473) ,
                                title: Text("Remove Prescription?",style: TextStyle(color: Colors.white),),
                                content: Text("Do you want to remove this prescription?",style: TextStyle(color: Colors.white),),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(); // Close the dialog
                                    },
                                    child: Text("Cancel",style: TextStyle(color: Colors.white),),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        items.removeAt(index); // Remove the item from the list
                                      });
                                      Navigator.of(context).pop(); // Close the dialog
                                    },
                                    child: Text("Delete",style: TextStyle(color: Colors.white),),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: mq.height * 0.03),
                          child: Container(
                            height: mq.height * 0.052,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    items[index].name,// Use the item from the list
                                    style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF005473),
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: mq.width * 0.01),
                                  child: Icon(Icons.check_circle, color: Colors.greenAccent),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                Visibility(
                  visible: addmorevisible,
                  child: Padding(
                    padding: EdgeInsets.only(top: mq.height*0.05,bottom: mq.height*0.01),

                    child: InkWell(
                      onTap: (){
                        _showFileSelectionBottomSheet(context,"Add_more");

                      },
                      child: Container(
                        height: mq.height*0.052,
                        width: mq.width*0.4,
                        decoration: BoxDecoration(
                            color: Color(0xFF005473),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Center(
                          child: AutoSizeText(
                            "Add more Prescription",
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            maxLines: 1,

                          ),
                        ),

                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(top: mq.height*0.03,bottom: mq.height*0.03),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: mq.height*0.07,
                        width: mq.width*0.4,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(
                            color:  Color(0xFF3C3C434D),
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          if(items.isNotEmpty){
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Congratspage(),
                              ),
                            );
                          }else{
                            print("Please select file");
                          }


                        },
                        child: Container(
                          height: mq.height*0.07,
                          width: mq.width*0.4,
                          decoration: BoxDecoration(
                              color: Color(0xFF005473),
                              borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          child: Center(
                            child: Text(
                              "Save",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                )

              ],

            ),
          ),
        ),
      ),

    );
  }
  void _showFileSelectionBottomSheet(BuildContext context, String boxname) {
    final mq = MediaQuery.of(context).size;
    showModalBottomSheet(
        backgroundColor: Color(0xFF005473),

        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
        ),

        context: context,
        builder: (builder){
          return Padding(
            padding: EdgeInsets.only(top: mq.height*0.02,bottom: mq.height*0.01,left: mq.width*0.05,right: mq.width*0.05),
            child: Container(
                width: double.infinity,
                height: mq.height*0.12,







                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: InkWell(
                            child: Column(
                              children: const [
                                Icon(Icons.image, size: 40.0,color: Colors.white,),
                                SizedBox(height: 12.0),
                                AutoSizeText(
                                  "Gallery",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16, color: Colors.white),
                                )
                              ],
                            ),
                            onTap: () {
                              _imgFromGallery(boxname);
                              Navigator.pop(context);
                            },
                          )),
                      Expanded(
                          child: InkWell(
                            child: SizedBox(
                              child: Column(
                                children: const [
                                  Icon(Icons.camera_alt, size: 40.0,color: Colors.white,),
                                  SizedBox(height: 12.0),
                                  AutoSizeText(
                                    "Camera",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 16, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              _imgFromCamera(boxname);
                              Navigator.pop(context);
                            },
                          )),
                      Expanded(
                          child: InkWell(

                            child: SizedBox(
                              child: Column(
                                children: const [
                                  Icon(Icons.file_copy_sharp, size: 40.0,color: Colors.white,),
                                  SizedBox(height: 12.0),
                                  AutoSizeText(
                                    "Document",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 16, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              _document(boxname);
                              Navigator.pop(context);
                            },
                          ))
                    ],
                  ),
                )),
          );
        }
    );
  }

  _imgFromGallery(String boxname) async {
    await _imagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50
    ).then((value){
      print(File(value!.path));
      setState(() {
        selectedFile = File(value.path);
        if(boxname=="+"){
          isVisible = false;
          addmorevisible = true;
        }

        items.add(CustomFile(name: value.name, path: selectedFile!.path,type: "Image"));

      });
    });
  }

  _imgFromCamera(String boxname) async {
    await _imagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50
    ).then((value){
      print(File(value!.path));
      setState(() {
        selectedFile = File(value.path);
        if(boxname=="+"){
          isVisible = false;
          addmorevisible = true;
        }

        items.add(CustomFile(name: value.name, path: selectedFile!.path,type: "Image"));


      });
    });
  }

  Future<void> _document(String boxname) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx'], // Specify allowed file extensions
      );

      if (result != null) {
        for (PlatformFile file in result.files) {
          String filePath = file.path ?? "";
          String fileName = file.name;


          setState(() {
            selectedFile = File(filePath);
            if(boxname=="+"){
              isVisible = false;
              addmorevisible = true;
            }

            items.add(CustomFile(name: fileName, path: filePath,type: "File") as CustomFile);

          });



          // print("File path of file : $filePath");
          // print("File name of the file : $fileName");
        }
      } else {

      }
    } catch (e) {

      print("Error picking a file: $e");
    }
  }

  _cropImage(File imgFile) async {
    final croppedFile = await ImageCropper().cropImage(
        sourcePath: imgFile.path,
        aspectRatioPresets: Platform.isAndroid
            ? [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ] : [
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio5x3,
          CropAspectRatioPreset.ratio5x4,
          CropAspectRatioPreset.ratio7x5,
          CropAspectRatioPreset.ratio16x9
        ],
        uiSettings: [AndroidUiSettings(
            toolbarTitle: "Image Cropper",
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
          IOSUiSettings(
            title: "Image Cropper",
          )
        ]);
    if (croppedFile != null) {

      imageCache.clear();
      setState(() {
        selectedFile = File(croppedFile.path);
      });
      // reload();
    }
  }
  Future<void> requestLocationPermission() async {
    final status = await Permission.location.request();
    if (status.isGranted) {
      print("permission Granted");
      // Permission granted, you can proceed with your logic
    } else {
      // Permission denied, handle accordingly
      print("permission Denied");

    }
  }

}

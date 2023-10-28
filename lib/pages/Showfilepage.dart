import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:medicalpage/Models/image_fileModels.dart';
import 'package:medicalpage/widget/CustomAppBar.dart';


class ShowFilePage extends StatefulWidget {
  final CustomFile file;


  ShowFilePage({
    Key? key,
    required this.file,

  }) : super(key: key);

  @override
  State<ShowFilePage> createState() => _ShowFilePageState();
}

class _ShowFilePageState extends State<ShowFilePage> {
  @override
  Widget build(BuildContext context) {
    if (widget.file.type == "Image") {
      return Image.file(
        File(widget.file.path),
        fit: BoxFit.fill,
      );
    } else if (widget.file.type == "File") {
      return PDFView(
        filePath: widget.file.path,
        // Other PDF view options can be configured here
      );
    } else {
      // Handle unsupported file type
      return Center(
        child: Text("Unsupported file type"),
      );
    }
  }
}
    // final mq = MediaQuery.of(context).size;
    // return Scaffold(
    //   appBar: CustomAppBar(),
    //   body: Column(
    //     children: [
    //       Expanded(child: Padding(
    //         padding: EdgeInsets.only(top: mq.height*0.02,left: mq.width*0.03,right: mq.width*0.03,bottom: mq.height*0.02),
    //         child: Image.file(
    //           File(widget.filePath),fit: BoxFit.fill,
    //         ),
    //       )),
    //       Padding(
    //         padding: EdgeInsets.only(top: mq.height*0.01,bottom: mq.height*0.01,left: mq.width*0.03,right: mq.width*0.03),
    //         child: Container(
    //           height: mq.height*0.06 ,
    //           width: double.infinity,
    //           color: Color(0xFF005473),
    //           child: Center(
    //             child: InkWell(
    //               onTap: (){
    //                 print("clcik ho raha hai");
    //                 widget.onDelete(widget.filePath);
    //                 Navigator.pop(context);
    //
    //               },
    //               child: Icon(
    //                 Icons.delete,
    //                 size: 32,
    //                 color: Colors.white,
    //               ),
    //             ),
    //           ),
    //         ),
    //       )
    //
    //   ],
    // ),
    //
    //
    //
    //   // body: Image.file(File(widget.imagePath)),
    // );


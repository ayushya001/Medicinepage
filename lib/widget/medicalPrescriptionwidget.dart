import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicalPrescriptionwidget extends StatelessWidget {
  const MedicalPrescriptionwidget({super.key});

  @override
  Widget build(BuildContext context) {

    final mq = MediaQuery.of(context).size;
    return Container(

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
          Padding(
            padding: EdgeInsets.only(top: mq.height*0.01,bottom: mq.height*0.01),
            child: Container(
              height: mq.height*0.18,
              width: mq.width*0.30,
              decoration: BoxDecoration(
                  color:Color(0xFF005473),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Center(
                child:  AutoSizeText(
                  "+",
                  style: GoogleFonts.roboto(
                    fontSize: 120,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  maxLines: 1,

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
    );
  }
}

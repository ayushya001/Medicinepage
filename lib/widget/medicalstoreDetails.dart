import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Medicalstoredetails extends StatelessWidget {
  const Medicalstoredetails({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(top: mq.height*0.05),
          child: Center(child:
          AutoSizeText(
            "Upload Your Prescription",
            style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 1,
          ),
          ),
        ),
        SizedBox(height: mq.height*0.03,),
        Container(
          height: mq.height * 0.22,
          width: mq.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), // Border radius for the container
            border: Border.all(
              color: Color(0xFF005473),
              width: 1.0,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              "assets/images/medicalstore.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        SizedBox(height: mq.height*0.01,),
        Padding(
          padding:  EdgeInsets.only(top: mq.height*0.01),
          child: Align(
            alignment: Alignment.centerLeft,
            child: AutoSizeText(
              "Medical Store",
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: mq.height*0.03,
            width: mq.width*0.12,
            decoration: BoxDecoration(
                color: Color(0xFF005473),
              borderRadius: BorderRadius.all(Radius.circular(3))
            ),
            child: Padding(
              padding:  EdgeInsets.only(left: 2,right: 2),
              child: Row(
                children: [
                  Icon(Icons.star,size: 16,color: Colors.white,),
                  AutoSizeText(
                    "4.7",
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          )
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: AutoSizeText(
            "E-13, South Extension Market,",
            style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            maxLines: 1,
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: AutoSizeText(
            "New Delhi, Delhi 110049",
            style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            maxLines: 1,

          ),
        )
      ],

    );
  }
}

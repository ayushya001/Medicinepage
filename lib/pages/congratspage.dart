import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../widget/CustomAppBar.dart';

class Congratspage extends StatelessWidget {

  const Congratspage({super.key});

  @override
  Widget build(BuildContext context) {

    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Container(
          width: mq.width*0.8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Congrats!",
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,

                ),
              ),
              SizedBox(height: mq.height*0.015,),
              AutoSizeText(
                "The Prescription was successfully uploaded",

                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 1,

              ),
              AutoSizeText(
                'Your medicines will be at your doorstep',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 1,
              ),
              SizedBox(height: mq.height*0.015,),
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Check status',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF005473),
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.center,
                    //     child: Icon(Icons.arrow_forward,size: 16,color: Color(0xFF005473),)
                    // ),

                    Padding(
                      padding: EdgeInsets.only(top: 4,left: 4),
                      child: Icon(Icons.arrow_right_alt,size: 28,color: Color(0xFF005473),),
                    )

                  ],
                ),
              ),
              SizedBox(height: mq.height*0.015,),
              Container(
                height: mq.height*0.042,
                width: mq.width*0.15,
                decoration: BoxDecoration(
                  color: Color(0xFF005473),
                  borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Center(
                  child: Text(
                    "Close",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white
                    ),

                  ),
                ),
              )



            ],
          ),
        )
      ),

    );
  }
}



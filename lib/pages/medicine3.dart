import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalpage/pages/medicine4.dart';
import 'package:medicalpage/widget/CustomAppBar.dart';
import 'package:medicalpage/widget/medicalPrescriptionwidget.dart';
import 'package:medicalpage/widget/medicalstoreDetails.dart';

class Medicine3 extends StatefulWidget {
  const Medicine3({super.key});

  @override
  State<Medicine3> createState() => _Medicine3State();
}

class _Medicine3State extends State<Medicine3> {

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
                Padding(
                  padding: EdgeInsets.only(top: mq.height*0.03),
                  child:  MedicalPrescriptionwidget()
                ),
                Padding(
                  padding: EdgeInsets.only(top: mq.height*0.03),

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
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Medicine4(),
                            ),
                          );

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
}

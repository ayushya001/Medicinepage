import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalpage/pages/congratspage.dart';
import 'package:medicalpage/widget/CustomAppBar.dart';
import 'package:medicalpage/widget/medicalstoreDetails.dart';

class Medicine4 extends StatefulWidget {
  const Medicine4({super.key});

  @override
  State<Medicine4> createState() => _Medicine4State();
}

class _Medicine4State extends State<Medicine4> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {

    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: mq.width*0.9 ,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Medicalstoredetails(),
                Padding(
                  padding: EdgeInsets.only(top: mq.height*0.03),
                  child: Container(
                    height: mq.height*0.052,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          width: mq.width*0.6,
                          child: Text(
                            "Medicine Prescription 1.pdf",
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color:  Color(0xFF005473),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,

                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: mq.width*0.01),
                          child: Icon(Icons.check_circle,color: Colors.greenAccent,),
                        )
                      ],

                    ),
                  ),
                ),
                Visibility(
                  visible: isVisible,
                  child: Padding(
                    padding: EdgeInsets.only(top: mq.height*0.01),
                    child: Container(
                      height: mq.height*0.052,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            width: mq.width*0.6,
                            child: Text(
                              "Medicine Prescription 2.pdf",
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color:  Color(0xFF005473),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,

                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: mq.width*0.01),
                            child: Icon(Icons.check_circle,color: Colors.greenAccent,),
                          )
                        ],

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: mq.height*0.05,bottom: mq.height*0.01),

                  child: InkWell(
                    onTap: (){
                      setState(() {
                        isVisible=true;
                        print(isVisible);
                      });
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

                Padding(
                  padding: EdgeInsets.only(top: mq.height*0.02,bottom: mq.height*0.02),

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
                              builder: (context) => Congratspage(),
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

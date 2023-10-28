import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
import 'package:medicalpage/widget/medical_listview.dart';
import 'package:medicalpage/widget/search_widget.dart';
=======
import 'package:medicalpage/widget/Searchwidget.dart';
import 'package:medicalpage/widget/medicallistview.dart';
>>>>>>> 30168b7 (adding_customfile)

class MedicalStorePage extends StatefulWidget {
  const MedicalStorePage({super.key});

  @override
  State<MedicalStorePage> createState() => _MedicalStorePageState();
}

class _MedicalStorePageState extends State<MedicalStorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Medicine',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Color(0xff212427),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_sharp),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 25.0,
              ),
              Text(
                'Find a Medical Stores near by',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Your area/pincode',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: Color(0xff005473),
                  ),
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              const SearchWidget(),
              const SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Famous Medical stores',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      color: Color(0xff212427),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return const MedicalListView();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 30168b7 (adding_customfile)

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicalListView extends StatefulWidget {
  const MedicalListView({super.key});

  @override
  State<MedicalListView> createState() => _MedicalListViewState();
}

class _MedicalListViewState extends State<MedicalListView> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Container(
        //height: mediaQuery.size.height * 0.15,
        height: 140,
        width: mediaQuery.size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            width: 1.0,
            color: const Color(0xff005473),
          ),
        ),
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: mediaQuery.size.height,
                  width: mediaQuery.size.width * 0.38,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/medicalstore.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Medical Store',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff212427),
                        ),
                      ),
                    ),
                    const SizedBox(height: 3.0),
                    SizedBox(
                      width: mediaQuery.size.width * 0.45,
                      child: Text(
                        'E-13, South Extension Market, Part-II, New Delhi',
                        maxLines: 2,
                        overflow: TextOverflow.visible,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff212427),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    SizedBox(
                      height: mediaQuery.size.height * 0.03,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xffffffff)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xff005473)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ))),
                        onPressed: () {},
                        child: Text(
                          'Upload your prescription',
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.0,
                              //
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                width: mediaQuery.size.width * 0.11,
                height: mediaQuery.size.height * 0.022,
                decoration: BoxDecoration(
                  color: const Color(0xff005473),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 11.0,
                        color: Color(0xffffffff),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        '4.7',
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 11.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

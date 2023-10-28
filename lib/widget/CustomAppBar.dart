import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left:mq.width*0.08),
        child: Row(
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
                child: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 24,)
            ),
            SizedBox(width: mq.width*0.23,),
            Text("Medicine",
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
            )
          ],
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/customshape.dart';
import 'package:shop/theme/color.dart';
class HelpLine extends StatefulWidget {
  const HelpLine({Key? key}) : super(key: key);

  @override
  State<HelpLine> createState() => _HelpLineState();
}

class _HelpLineState extends State<HelpLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Helpline',
          style: GoogleFonts.viga(
            color: Colors.white,
          ),
        ),
        toolbarHeight: 110,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: ClipPath(
          clipper: Customshape(),
          child: Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            color: background,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20,left: 15),
              child: Text('Contact to Administrator',style: GoogleFonts.viga(fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('+91 1234567898',style: GoogleFonts.roboto(),),
                  Icon(Icons.camera_alt,size: 25,color: Colors.green,),
                  Icon(Icons.chat,size: 25,),
                  Image.asset(('assets/images/chat (1).png'),height: 25,width: 25,color: Colors.green,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

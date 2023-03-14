import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/homepage/otp_transaction.dart';

import '../customshape.dart';
import '../theme/color.dart';

class EnterMobile extends StatefulWidget {
  const EnterMobile({Key? key}) : super(key: key);

  @override
  State<EnterMobile> createState() => _EnterMobileState();
}

class _EnterMobileState extends State<EnterMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Indo Nepal Remittance Services',
          style: GoogleFonts.viga(
            fontSize: 15,
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
              alignment: Alignment.center,
              child: Text("Enter Sender's Mobile Number",style: GoogleFonts.viga(fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
             alignment: Alignment.center,
              child: Text("Mobile Number",style: GoogleFonts.viga(fontSize: 14),),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Enter Mobile Number'),
                      hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            SizedBox(height: 40,),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(
                onPressed: (){
                  Get.to(OtpTransaction());
                },
                child: Text('Submit',style: GoogleFonts.roboto(color: Colors.white),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

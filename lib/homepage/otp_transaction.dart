import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/customshape.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:shop/homepage/ime_transaction.dart';
import 'package:shop/homepage/receiver_Dtails.dart';
import '../theme/color.dart';
class OtpTransaction extends StatefulWidget {
  const OtpTransaction({Key? key}) : super(key: key);

  @override
  State<OtpTransaction> createState() => _OtpTransactionState();
}

class _OtpTransactionState extends State<OtpTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'OTP Verification',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: Text(
                'Enter The OTP',
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              child: Text(
                'We have sent 4 digit verification code in the given ',
                style: GoogleFonts.roboto(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5),
              alignment: Alignment.center,
              child: Text(
                'Mobile Number ',
                style: GoogleFonts.roboto(
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            OtpPinField(
              otpPinFieldInputType: OtpPinFieldInputType.none,
              // otpPinInputCustom: "\$",
              onSubmit: (text) {
                print('Entered pin is $text');
              },
              otpPinFieldStyle: OtpPinFieldStyle(
                defaultFieldBorderColor: Color(0xFF6739B7),
                activeFieldBorderColor: Colors.black,
                // defaultFieldBackgroundColor: Colors.pinkAccent,
                // activeFieldBackgroundColor: Colors.cyanAccent,
              ),
              //fieldCount: 4,
              maxLength: 4,
              highlightBorder: true,
              fieldWidth: 50,
              fieldHeight: 50,
              keyboardType: TextInputType.number,
              autoFocus: false,
              otpPinFieldDecoration:
              OtpPinFieldDecoration.defaultPinBoxDecoration,
            ),
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text('Resend OTP',style: GoogleFonts.roboto(),),
                  SizedBox(width: 15,),
                  Text('00:29s',style: GoogleFonts.roboto(color: background),),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: (){
               Get.to(ReceiverDetails());
              },
              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  'Verify OTP',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

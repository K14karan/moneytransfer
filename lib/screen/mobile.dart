import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shop/screen/registration.dart';
import 'package:shop/setting/helpline.dart';
import 'package:shop/theme/color.dart';
class MobileNumber extends StatefulWidget {
  const MobileNumber({Key? key}) : super(key: key);

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*.1,
            ),

            CircleAvatar(
              radius: 60,
              backgroundImage:  AssetImage('assets/images/money.jpg',),
             // child: AssetImage('assets/images/money.jpg',),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text('Welcome',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text('Enter your number and verify',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: IntlPhoneField(
                dropdownIcon: Icon(Icons.arrow_drop_down,color: Colors.black),
                dropdownTextStyle: GoogleFonts.roboto(color: Colors.black),
                style: GoogleFonts.roboto(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Color(0xFF6739B7))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Color(0xFF6739B7))),
                  hintText: ('Phone Number'),
                  hintStyle: GoogleFonts.roboto(color: Colors.black),
                  contentPadding: EdgeInsets.only(left: 20, top: 10),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Color(0xFF6739B7)),
                      borderRadius: BorderRadius.circular(20)),
                ),
                onChanged: (phone) {
                  // print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  // print('Country changed to: ' + country.name);
                },
              ),
            ),
            SizedBox(height: 30,),
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
                  Get.to(RegistrationPage());
                },
                child: Text('Next',style: GoogleFonts.roboto(color: Colors.white),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: (){
                  Get.to(HelpLine());
                },
                child: Text('Need help?',style: GoogleFonts.roboto(color: background),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

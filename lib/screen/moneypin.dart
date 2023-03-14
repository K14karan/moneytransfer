import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/screen/confirm_money.dart';
import 'package:shop/theme/color.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
class MoneyPin extends StatefulWidget {
  const MoneyPin({Key? key}) : super(key: key);

  @override
  State<MoneyPin> createState() => _MoneyPinState();
}

class _MoneyPinState extends State<MoneyPin> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 40,right: 20),
              alignment: Alignment.topRight,
              child: Text('Skip',style: GoogleFonts.viga(color: background,fontWeight: FontWeight.bold),),
            ),
            Container(
              height: MediaQuery.of(context).size.height*.06,
            ),

            CircleAvatar(
              radius: 60,
              backgroundImage:  AssetImage('assets/images/money.jpg',),
              // child: AssetImage('assets/images/money.jpg',),
            ),
            Container(
              padding: EdgeInsets.only(top:30),
              child: Text('Create your MPIN',style: GoogleFonts.viga(fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(top:10,left: 30,right: 20),
              child: Text("Let's create a pincode so you don't have to keep typing your password everything you use our app,shall we?",style: GoogleFonts.viga(color:Colors.grey,fontSize: 12),),
            ),
            SizedBox(height: 40,),
            PinCodeTextField(
              autofocus: true,
              controller: _textEditingController,
              maxLength: 4,
              highlight: false,
              hasUnderline: false,
              hideCharacter: true,
              pinBoxColor: Colors.white,
              highlightPinBoxColor: Colors.grey[100],
              onDone: (text){
               // print(_textEditingController.text);
              },
              highlightColor: Colors.green,
              defaultBorderColor: background,
              hasTextBorderColor: background,
              maskCharacter: "*",
              pinTextStyle: TextStyle(fontSize: 18),
            ),

            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: (){
                Get.to(ConfirmMoney());
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
                  'Next',
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

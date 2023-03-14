import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:shop/screen/login.dart';
import 'package:shop/theme/color.dart';
class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({Key? key}) : super(key: key);

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:  AssetImage('assets/images/money.jpg',),
                    // child: AssetImage('assets/images/money.jpg',),
                  ),
                  Image.asset('assets/images/close.png',color: background,height: 25,width: 25,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 20),
              child: Text('Confirm Password ?',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 20),
              child: Text('Set new password and confirm',style: GoogleFonts.roboto(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  obscureText: isObscure,
                  cursorColor: Colors.grey,
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
                      hintText: ('New Password'),
                      hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10),
                      suffixIcon: Icon(
                        isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Color(0xFF6739B7),
                      ),
                      prefixIconColor: Color(0xFF6739B7)),
                  onTap: () {
                    setState(() {
                      isObscure = ! isObscure;
                    });
                  },
                  ),
                ),
            SizedBox(height: 20,),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  obscureText: _isObscure,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Confirm Password'),
                      hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10),
                      suffixIcon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Color(0xFF6739B7),
                      ),
                      prefixIconColor: Color(0xFF67739B7)),
                  onTap: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },),

                ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Get.to(LoginPage());
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: background, borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Proceed',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,letterSpacing: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

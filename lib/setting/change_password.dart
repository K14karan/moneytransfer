import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/customshape.dart';
import 'package:shop/theme/color.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _isObscure = true;
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Change Password',
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
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                obscureText: _isObscure,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6739B7)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6739B7)),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color:Color(0xFF6739B7)),
                    ),
                    hintText: ('Current Password'),
                    hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                    contentPadding: EdgeInsets.only(top: 10,left: 10),
                    suffixIcon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Color(0xFF6739B7),
                    ),
                    prefixIconColor: Color(0xFF6739B7)),
                onTap: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },),

            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                obscureText: _isObscure1,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6739B7)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6739B7)),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color:Color(0xFF6739B7)),
                    ),
                    hintText: ('New Password'),
                    hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                    contentPadding: EdgeInsets.only(top: 10,left: 10),
                    suffixIcon: Icon(
                      _isObscure1 ? Icons.visibility : Icons.visibility_off,
                      color: Color(0xFF6739B7),
                    ),
                    prefixIconColor: Color(0xFF6739B7)),
                onTap: () {
                  setState(() {
                    _isObscure1 = !_isObscure1;
                  });
                },),

            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                obscureText: _isObscure2,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6739B7)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6739B7)),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color:Color(0xFF6739B7)),
                    ),
                    hintText: ('Confirm Password'),
                    hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                    contentPadding: EdgeInsets.only(top: 10,left: 10),
                    suffixIcon: Icon(
                      _isObscure2 ? Icons.visibility : Icons.visibility_off,
                      color: Color(0xFF6739B7),
                    ),
                    prefixIconColor: Color(0xFF6739B7)),
                onTap: () {
                  setState(() {
                    _isObscure2 = !_isObscure2;
                  });
                },),

            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: background, borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Save',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

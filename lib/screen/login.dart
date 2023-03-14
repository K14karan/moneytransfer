import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:shop/navigation.dart';
import 'package:shop/screen/forget_password.dart';
import 'package:shop/setting/helpline.dart';
import 'package:shop/theme/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool second = false;
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*.1,
            ),

            CircleAvatar(
              radius: 60,
              backgroundImage:  AssetImage('assets/images/money.jpg',),
              // child: AssetImage('assets/images/money.jpg',),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Welcome',
                style:
                    GoogleFonts.viga(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 30, right: 20),
              child: Text(
                "Sign in to continue",
                style: GoogleFonts.viga(color: Colors.grey, fontSize: 14),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Enter Mobile Number'),
                      hintStyle:
                          GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            SizedBox(
              height: 20,
            ),
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
                    hintText: ('Password'),
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
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: background,
                          value: this.second,
                          onChanged: (bool? value) {
                            setState(() {
                              this.second = value!;
                            });
                          },
                        ),
                        Text(
                          'Remember Me',
                          style: GoogleFonts.viga(color: Colors.grey),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Get.to(ForgetPassword());
                      },
                      child: Text(
                        'Forget password?',
                        style: GoogleFonts.viga(color: background),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                 Get.to(NavigationPage());
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: background, borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Login',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Get.to(HelpLine());
                },
                child: Text(
                  'Need help?',
                  style: GoogleFonts.viga(color: background),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:shop/customshape.dart';
import 'package:shop/homepage/send_account.dart';

import '../theme/color.dart';
class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Select Bank Name',
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
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Select bank ',
                style: GoogleFonts.viga(fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color:Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color:Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Enter Bank Name'),
                      prefixIcon: Icon(Icons.search,color: Color(0xFF6739B7),),
                      hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15),
              child: Text(
                'Popular bank',
                style: GoogleFonts.viga(fontSize:14,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap:(){
                      Get.to(SendAccount());
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.purple[800],
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset('assets/images/union.png'),
                            ),
                          ),
                        ),
                        SizedBox(height:10,),
                        Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      Get.to(SendAccount());
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.purple[800],
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset('assets/images/union.png'),
                            ),
                          ),
                        ),
                        SizedBox(height:10,),
                        Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      Get.to(SendAccount());
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.purple[800],
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset('assets/images/union.png'),
                            ),
                          ),
                        ),
                        SizedBox(height:10,),
                        Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      Get.to(SendAccount());
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.purple[800],
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset('assets/images/union.png'),
                            ),
                          ),
                        ),
                        SizedBox(height:10,),
                        Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                      ],
                    ),
                  ),


                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.purple[800],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/images/union.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.purple[800],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/images/union.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.purple[800],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/images/union.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.purple[800],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/images/union.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                    ],
                  ),


                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.purple[800],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/images/union.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.purple[800],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/images/union.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.purple[800],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/images/union.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.purple[800],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/images/union.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                    ],
                  ),


                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.purple[800],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/images/union.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.purple[800],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/images/union.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.purple[800],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/images/union.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.purple[800],
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            width: 30,
                            height: 30,
                            child: Image.asset('assets/images/union.png'),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text('Union BOI',style: GoogleFonts.viga(fontSize: 12),)
                    ],
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

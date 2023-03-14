import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/customshape.dart';
import 'package:shop/theme/color.dart';
class SendAccount extends StatefulWidget {
  const SendAccount({Key? key}) : super(key: key);

  @override
  State<SendAccount> createState() => _SendAccountState();
}

class _SendAccountState extends State<SendAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  Container(
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
            // Get.to(OtpPage());
          },
          child: Text('Pay',style: GoogleFonts.roboto(color: Colors.white),),
        ),
      ) ,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Send Money',
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
              padding: EdgeInsets.only(left: 20,top: 15),
              child: Text(
                'Send Money to Bank Account ',
                style: GoogleFonts.viga(fontSize:14,
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
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF6739B7)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ('Account Number'),
                      hintStyle: GoogleFonts.viga(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF6739B7)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ('IFSC Code'),
                      hintStyle: GoogleFonts.viga(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF6739B7)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ("Account Holder's Name"),
                      hintStyle: GoogleFonts.viga(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF6739B7)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ('Mobile Number (Optional)'),
                      hintStyle: GoogleFonts.viga(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            Container(height: MediaQuery.of(context).size.height*.045,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('₹',style: GoogleFonts.viga(fontSize: 40,color: Colors.black),),
                Container(
                    width: 120,
                    // padding: const EdgeInsets.fromLTRB(80, 10, 50, 0),
                    child: TextField(
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.number,
                      //style: const TextStyle(height: 0.4),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none
                          ),
                          filled: true,
                          hintText: '0000.00',
                          fillColor: Colors.grey[50],
                          contentPadding: EdgeInsets.only(top: 10,left: 10)),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

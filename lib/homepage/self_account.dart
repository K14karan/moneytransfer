import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/customshape.dart';
import 'package:shop/theme/color.dart';

class SelfAccount extends StatefulWidget {
  const SelfAccount({Key? key}) : super(key: key);
  @override
  State<SelfAccount> createState() => _SelfAccountState();
}

class _SelfAccountState extends State<SelfAccount> {
  String? gender;
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
          'Send money',
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
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Radio(
                    value: "Union Bank of india-14478954",
                    groupValue: gender,
                    activeColor: Color(0xFF6739B7),
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text(
                    "Union Bank of india-14478954",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Image.asset(
                    'assets/images/union.png',
                    height: 25,
                    width: 25,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Text('Rehan Khan',style: GoogleFonts.viga(),),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Text('You are Paying',style: GoogleFonts.viga(),),
            ),
Container(height: MediaQuery.of(context).size.height*.1,),
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
                fillColor: Colors.grey[50],
                contentPadding: EdgeInsets.only(top: 10,left: 10)),
              )),
        ],
      ),
            // Container(height: MediaQuery.of(context).size.height*.1,),
            // Container(
            //   alignment: Alignment.center,
            //     width: 120,
            //     // padding: const EdgeInsets.fromLTRB(80, 10, 50, 0),
            //     child: TextField(
            //       cursorColor: Colors.grey,
            //       //style: const TextStyle(height: 0.4),
            //       decoration: InputDecoration(
            //           border: OutlineInputBorder(
            //               borderSide: BorderSide.none
            //           ),
            //           filled: true,
            //           fillColor: Colors.grey[50],
            //           contentPadding: EdgeInsets.only(top: 10,left: 10),
            //       hintText: 'Add Message'),
            //     )),


          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/customshape.dart';
import 'package:shop/theme/color.dart';
class TransferMoney extends StatefulWidget {
  const TransferMoney({Key? key}) : super(key: key);

  @override
  State<TransferMoney> createState() => _TransferMoneyState();
}

class _TransferMoneyState extends State<TransferMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('UPI/Manual',style: GoogleFonts.viga(color: Colors.white,),),
        toolbarHeight: 110,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace:   ClipPath(
          clipper: Customshape(),
          child: Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            color: background,
          ),
        ),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Amount (₹)',style: GoogleFonts.viga(),),
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: 250,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.grey,
                        //style: const TextStyle(height: 0.4),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: ('Enter Amount'),
                            hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                            contentPadding: EdgeInsets.only(top: 10,left: 10)),
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('UTR',style: GoogleFonts.viga(),),
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: 250,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.grey,
                        //style: const TextStyle(height: 0.4),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: ('UTR'),
                            hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                            contentPadding: EdgeInsets.only(top: 10,left: 10)),
                      )),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.camera_alt,color: Colors.grey,size: 30,),
                SizedBox(width: 15,),
                Text('or',style: GoogleFonts.roboto(),),
                SizedBox(width: 15,),
                Image.asset('assets/images/gallery (1).png',height: 25,width: 25,)
              ],
            ),
            
            SizedBox(height: 50,),
            InkWell(
              onTap: () {
               // Get.to(TransferMoney());
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20,bottom: 10),
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: background, borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Submit',
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

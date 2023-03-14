import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:shop/customshape.dart';
import 'package:shop/homepage/transfer_money.dart';
import 'package:shop/theme/color.dart';
class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bank Details',style: GoogleFonts.viga(color: Colors.white,),),
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
              padding: EdgeInsets.only(left: 10,right:120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Bank:',style: GoogleFonts.roboto(),),
                  Text('RBL Bank',style: GoogleFonts.roboto(),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right:10,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Beneficiary Name:',style: GoogleFonts.roboto(),),
                  Text('ESewa Service India Pvt Ltd',style: GoogleFonts.roboto(),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right:10,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Account Number:',style: GoogleFonts.roboto(),),
                  Text('123456789987',style: GoogleFonts.roboto(),),
                  Image.asset('assets/images/document.png',height: 20,width: 20,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right:10,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('IFSC:',style: GoogleFonts.roboto(),),
                  Container(
                    padding: EdgeInsets.only(left: 70),
                      child: Text('IDFBOO40308',style: GoogleFonts.roboto(),)),
                  Image.asset('assets/images/document.png',height: 20,width: 20,)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(color: Colors.grey,thickness: 1,),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.only(left: 10,right:120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Bank:',style: GoogleFonts.roboto(),),
                  Text('RBL Bank',style: GoogleFonts.roboto(),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right:10,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Beneficiary Name:',style: GoogleFonts.roboto(),),
                  Text('ESewa Service India Pvt Ltd',style: GoogleFonts.roboto(),)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right:10,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Account Number:',style: GoogleFonts.roboto(),),
                  Text('123456789987',style: GoogleFonts.roboto(),),
                  Image.asset('assets/images/document.png',height: 20,width: 20,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right:10,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('IFSC:',style: GoogleFonts.roboto(),),
                  Container(
                      padding: EdgeInsets.only(left: 70),
                      child: Text('IDFBOO40308',style: GoogleFonts.roboto(),)),
                  Image.asset('assets/images/document.png',height: 20,width: 20,)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(color: Colors.grey,thickness: 1,),
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Text('Instruction',style: GoogleFonts.viga(),),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.only(left: 15,right: 10,top: 10),
              child: Text('1) Deposit Amount Above Mention account Number.',style: GoogleFonts.roboto(),),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 10,top: 10),
              child: Text('2) Take screenshot after the complete payment Slip.',style: GoogleFonts.roboto(),),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 10,top: 10),
              child: Text('3) Click the below credit Request button.',style: GoogleFonts.roboto(),),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 10,top: 10),
              child: Text('3) Enter your sent Amount 12 digit UTR numbers.',style: GoogleFonts.roboto(),),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 10,top: 10),
              child: Text('5) Upload the payment slip and Submit. It will be credit in your wallet within 2 working hours of submitted time',style: GoogleFonts.roboto(),),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: () {
                Get.to(TransferMoney());
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20,bottom: 10),
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: background, borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Credit Request/Failed Txn Enquire',
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

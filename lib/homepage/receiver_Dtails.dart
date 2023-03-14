import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:shop/homepage/receiver_otp.dart';

import '../customshape.dart';
import '../theme/color.dart';
class ReceiverDetails extends StatefulWidget {
  const ReceiverDetails({Key? key}) : super(key: key);

  @override
  State<ReceiverDetails> createState() => _ReceiverDetailsState();
}

class _ReceiverDetailsState extends State<ReceiverDetails> {
  String? dropdownValue;
  String? dropdownValue1;
  String? dropdownValue2;
  String? dropdownValue3;
  String? dropdownValue4;
  String? dropdownValue5;
  String? dropdownValue6;
  String? dropdownValue7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Receiver Details',
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
              padding: EdgeInsets.only(left: 20, ),
              child: Text(
                'Receiver Name',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                //width: 250,
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
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ('Enter Name'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Receiver Mobile Number',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                //width: 250,
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
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ('Mobile Number'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Receiver Occupation',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: DropdownButtonFormField<String>(
                key: UniqueKey(),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  hintText: 'Occupation',
                  contentPadding: EdgeInsets.only(left: 10, top: 10),
                  suffixStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                value: dropdownValue,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("Salaried"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("Adhar Card"),
                  ),
                  DropdownMenuItem<String>(
                    value: "3",
                    child: Text("Pan Card"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue = newStateId!;
                  });
                },
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Municipality',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                //width: 250,
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
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ('Municipality'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Receiver Gender',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: DropdownButtonFormField<String>(
                key: UniqueKey(),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  hintText: 'Select',
                  contentPadding: EdgeInsets.only(left: 10, top: 10),
                  suffixStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                value: dropdownValue1,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("Male"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("Female"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue1 = newStateId!;
                  });
                },
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Source of Fund',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: DropdownButtonFormField<String>(
                key: UniqueKey(),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  hintText: 'Select',
                  contentPadding: EdgeInsets.only(left: 10, top: 10),
                  suffixStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                value: dropdownValue2,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("Male"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("Female"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue2 = newStateId!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Relationship',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: DropdownButtonFormField<String>(
                key: UniqueKey(),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  hintText: 'Select',
                  contentPadding: EdgeInsets.only(left: 10, top: 10),
                  suffixStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                value: dropdownValue3,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("Mother-Son"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("FaSther-Son"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue3 = newStateId!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Payment Mode',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: DropdownButtonFormField<String>(
                key: UniqueKey(),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  hintText: 'Select',
                  contentPadding: EdgeInsets.only(left: 10, top: 10),
                  suffixStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                value: dropdownValue4,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("Cash Payment"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("Online"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue1 = newStateId!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Bank',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: DropdownButtonFormField<String>(
                key: UniqueKey(),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  hintText: 'Select',
                  contentPadding: EdgeInsets.only(left: 10, top: 10),
                  suffixStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                value: dropdownValue5,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("Union BOI"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("SBI"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue5 = newStateId!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Bank Branch',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: DropdownButtonFormField<String>(
                key: UniqueKey(),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6739B7)),
                  ),
                  hintText: 'Select',
                  contentPadding: EdgeInsets.only(left: 10, top: 10),
                  suffixStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                value: dropdownValue6,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("Moti Nagar"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("Kirti nagr"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue6 = newStateId!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Amount (INR)',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                //width: 250,
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
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ('Enter Amount'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),

            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Account No',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                //width: 250,
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
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ('Enter Account No'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),

            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Amount Collected (INR)',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                //width: 250,
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
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ('Amount Collected (INR)'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Amount Payable (INR)',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                //width: 250,
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
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ('Amount Payable (IPR)'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Service Charge (INR)',
                style: GoogleFonts.viga(),
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                //width: 250,
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
                        borderSide: BorderSide(color: Color(0xFF6739B7)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ('Service Charge (INR)'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(
                onPressed: (){
                  Get.to(ReceiverOtp());
                },
                child: Text('Send',style: GoogleFonts.roboto(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/homepage/nepal_citizenship.dart';
import 'package:shop/homepage/otp_transaction.dart';

import '../customshape.dart';
import '../theme/color.dart';

class RemittancePage extends StatefulWidget {
  const RemittancePage({Key? key}) : super(key: key);

  @override
  State<RemittancePage> createState() => _RemittancePageState();
}

class _RemittancePageState extends State<RemittancePage> {
  String? dropdownValue;
  String? dropdownValue1;
  String? dropdownValue2;
  String? dropdownValue3;
  String? dropdownValue4;
  String? dropdownValue5;
  String? dropdownValue6;
  String? dropdownValue7;
  String? dropdownValue8;
  String? dropdownValue9;
  String? dropdownValue10;
  String? dropdownValue11;
  String? dropdownValue12;
  String? dropdownValue13;
  String? dropdownValue14;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 0),
              child: Text("Personal Details",style: GoogleFonts.viga(fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Sender Name',
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
                'Mobile Number',
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
                'Nationality',
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
                    child: Text("Indian"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("Nepal"),
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
                'Marital status',
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
                value: dropdownValue9,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("Single"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("Married"),
                  ),
                  DropdownMenuItem<String>(
                    value: "3",
                    child: Text("Unarried"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue9 = newStateId!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Date of Birth',
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
                      hintText: ('Enter Date of Birth'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Gender',
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
                'Father/Mother Name',
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
                'Occupation',
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
                    child: Text("Father-Son"),
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
                    dropdownValue4 = newStateId!;
                  });
                },
              ),
            ),
            Divider(
              height: MediaQuery.of(context).size.height*.10,
              color: Colors.grey,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 0),
              child: Text("Temporary Address",style: GoogleFonts.viga(fontSize: 16),),
            ),

            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Country',
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
                    child: Text("India"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("Nepal"),
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
                'State',
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
                value: dropdownValue7,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("DDDFF"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("ASDF"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue7 = newStateId!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'District',
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
                value: dropdownValue8,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("SDDDD"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("SDDFF"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue8 = newStateId!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Address',
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
                      hintText: ('Enter Address'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            Divider(
              height: MediaQuery.of(context).size.height*.10,
              color: Colors.grey,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 0),
              child: Text("Permanent Address",style: GoogleFonts.viga(fontSize: 16),),
            ),

            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'Country',
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
                value: dropdownValue10,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("India"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("Nepal"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue10 = newStateId!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'State',
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
                value: dropdownValue11,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("DDDFF"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("ASDF"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue11 = newStateId!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'District',
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
                value: dropdownValue12,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("SDDDD"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("SDDFF"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue12 = newStateId!;
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
                'Address',
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
                      hintText: ('Enter Address'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            Divider(
              height: MediaQuery.of(context).size.height*.10,
              color: Colors.grey,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 0),
              child: Text("Identity Details",style: GoogleFonts.viga(fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'ID Types',
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
                value: dropdownValue13,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("Cityzenship"),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("Passport"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue13 = newStateId!;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'ID Number',
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
                      hintText: ('Enter ID Number'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: Text(
                'ID Issue(Eng)',
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
                      hintText: ('Enter Date'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'ID Issue(Nepal)',
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
                      hintText: ('Enter Date'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left: 20,top: 15 ),
              child: Text(
                'ID Issue Place',
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
                value: dropdownValue14,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("Bhojpur "),
                  ),
                  DropdownMenuItem<String>(
                    value: "2",
                    child: Text("Dhankuta"),
                  ),
                  DropdownMenuItem<String>(
                    value: "3",
                    child: Text("Jhapa"),
                  ),
                ],
                onChanged: (String? newStateId) {
                  setState(() {
                    dropdownValue14 = newStateId!;
                  });
                },
              ),
            ),
            Divider(
              height: MediaQuery.of(context).size.height*.10,
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, ),
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
                  Get.to(NepalCity());
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

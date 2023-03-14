import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:shop/customshape.dart';
import 'package:shop/theme/color.dart';
import 'package:intl/intl.dart';
class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  TextEditingController dateinput = TextEditingController();
  TextEditingController dateinput1 = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    dateinput1.text = "";//set the initial value of text field
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Reports',
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
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Start Date',style: GoogleFonts.viga(),),
                  Container(
                    height: 50,
                    width: 160,
                    child: TextField(
                      controller: dateinput,
                      decoration: InputDecoration(
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
                          hintText: ('Start Date'),
                          labelStyle: GoogleFonts.viga(fontSize: 12),
                          suffixIcon: Icon(
                            Icons.calendar_today,
                            color: Color(0xFF6739B7),
                          ),
                          contentPadding: EdgeInsets.only(top: 10, left: 10)),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          print(pickedDate);
                          String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(formattedDate);

                          setState(() {
                            dateinput.text = formattedDate;
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:20,),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('End Date',style: GoogleFonts.viga(),),
                  Container(
                    height: 50,
                    width: 160,
                    child: TextField(
                      controller: dateinput1,
                      decoration: InputDecoration(
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
                          hintText: ('End Date'),
                          labelStyle: GoogleFonts.viga(fontSize: 12),
                          suffixIcon: Icon(
                            Icons.calendar_today,
                            color: Color(0xFF6739B7),
                          ),
                          contentPadding: EdgeInsets.only(top: 10, left: 10)),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          print(pickedDate);
                          String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(formattedDate);

                          setState(() {
                            dateinput1.text = formattedDate;
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    ),
                  ),
                ],
              ),
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
                  'View Reports',
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

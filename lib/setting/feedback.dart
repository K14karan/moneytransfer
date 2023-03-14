import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/customshape.dart';
import 'package:shop/theme/color.dart';
class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Feedback',
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
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Write Your Feedback',
                style: GoogleFonts.roboto(fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextFormField(
                maxLines: 4,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: Color(0xFF6739B7)),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 1, color: Color(0xFF6739B7)),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: ('Write Feedback'),
                  hintStyle: GoogleFonts.roboto(color: Colors.black,fontSize: 12),
                  contentPadding: EdgeInsets.only(top: 10, left: 20),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color(0xFF6739B7),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          'Submit',
                          style: GoogleFonts.roboto(
                              fontSize: 16, color: Colors.white, letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xFF6739B7),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          'Cancel',
                          style: GoogleFonts.roboto(
                              fontSize: 16, color: Colors.white, letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

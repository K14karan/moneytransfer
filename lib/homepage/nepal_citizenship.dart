import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:shop/customshape.dart';
import 'package:shop/theme/color.dart';
import 'package:image_picker/image_picker.dart';

import 'otp_transaction.dart';
class NepalCity extends StatefulWidget {
  const NepalCity({Key? key}) : super(key: key);

  @override
  State<NepalCity> createState() => _NepalCityState();
}

class _NepalCityState extends State<NepalCity> {
  File? image;

  final ImagePicker _picker = ImagePicker();
  cameraFile() async {
    var cameraFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      image = cameraFile as File?;
    });
  }
  File? images;

  final ImagePicker picker = ImagePicker();
  cameraFiles() async {
    var cameraFiles = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      image = cameraFiles as File?;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Upload Document',
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
          children: [
            Container(
              alignment: Alignment.center,
              child: Text('Upload Nepal Citizenship Certificate',style: GoogleFonts.viga(fontSize: 16),),
            ),
            SizedBox(height: 15,),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/rehan.jpg',),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1,color:background )
              ),
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                cameraFile();
              },
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(10)
                ),
                alignment: Alignment.center,
                child: Text('Upload Front',style: GoogleFonts.viga(color: Colors.white),),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/khan.jpg',),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1,color:background )
              ),
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                cameraFiles();
              },
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.circular(10)
                ),
                alignment: Alignment.center,
                child: Text('Upload Back',style: GoogleFonts.viga(color: Colors.white),),
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Get.to(OtpTransaction());
              },
              child: Container(
                margin: EdgeInsets.only(left: 15,right: 15,bottom: 10),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.circular(10)
                ),
                alignment: Alignment.center,
                child: Text('Continue',style: GoogleFonts.viga(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

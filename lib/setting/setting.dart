import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:shop/customshape.dart';
import 'package:shop/setting/change_password.dart';
import 'package:shop/setting/feedback.dart';
import 'package:shop/setting/helpline.dart';
import 'package:shop/setting/reports.dart';
import 'package:shop/theme/color.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  var titles = [
    'Change password',
    'Helpline',
    'Reports',
    'Share',
    'Feedback',
    'Logout'
  ];
  List imgList = [
    Image.asset('assets/images/reset-password.png', height: 20, width: 20),
    Image.asset('assets/images/helpline.png', height: 20, width: 20),
    Image.asset('assets/images/report.png', height: 20, width: 20),
    Image.asset('assets/images/share.png', height: 20, width: 20,),
    Image.asset('assets/images/feedback.png', height: 20, width: 20),
    Image.asset('assets/images/logout.png', height: 20, width: 20),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Setting',
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
        body: ListView(
          children: [
            InkWell(
              onTap: () {
                Get.to(ChangePassword());
              },
              child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF6739B7),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/images/reset-password.png',
                        height: 20,
                        width: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Change Password',
                        style: GoogleFonts.viga(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ))),
            ),
            InkWell(
              onTap: () {
                Get.to(HelpLine());
              },
              child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF6739B7),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/images/helpline.png',
                        height: 20,
                        width: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Helpline',
                        style: GoogleFonts.viga(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ))),
            ),
            InkWell(
              onTap: () {
                Get.to(ReportPage());
              },
              child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF6739B7),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/images/report.png',
                        height: 20,
                        width: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Reports',
                        style: GoogleFonts.viga(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ))),
            ),
            InkWell(
              child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF6739B7),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/images/play.png',
                        height: 20,
                        width: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        'See Training video',
                        style: GoogleFonts.viga(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ))),
            ),
            InkWell(
              child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF6739B7),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/images/share.png',
                        height: 20,
                        width: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Share',
                        style: GoogleFonts.viga(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ))),
            ),
            InkWell(
              onTap: () {
                Get.to(FeedbackPage());
              },
              child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF6739B7),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                      leading: Image.asset(
                        'assets/images/feedback.png',
                        height: 20,
                        width: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Feedback',
                        style: GoogleFonts.viga(color: Colors.white),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ))),
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 30,bottom: 10),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF6739B7),
                    borderRadius: BorderRadius.circular(5)),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/logout.png',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                  title: Text(
                    'logout',
                    style: GoogleFonts.viga(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                )),
          ],
        ));
  }
}

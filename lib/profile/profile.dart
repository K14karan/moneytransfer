
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:shop/customshape.dart';
import 'package:shop/theme/color.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? image;

  final ImagePicker _picker = ImagePicker();
  cameraFile() async {
    var cameraFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      image = cameraFile as File?;
    });
  }
  late TextEditingController controller;
  @override
  void initState(){
    super.initState();
    controller=TextEditingController();
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
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
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 41,
                backgroundColor: Color(0xFF6739B7),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/money.jpg'),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: (){
              cameraFile();
            },
            child: Container(
              padding: EdgeInsets.only(left: 80),
              alignment: Alignment.center,
              child: Image.asset('assets/images/editing.png',height: 25,width: 25,color: Color(0xFF6739B7),)
            ),
          ),
          Divider(height: 20,thickness: 1,color: Colors.grey,),
          Card(
            elevation: 1,
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 20,top: 10,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 20,),
                        Text('Rehan Shekh Khan',style: GoogleFonts.viga(),),
                      ],
                    ),
                  ),

                  IconButton(onPressed: (){
                    alertDialog();
                  }, icon: Icon(Icons.edit))
                ],
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 20,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.email_outlined),
                        SizedBox(width: 20,),
                        Text('Rehan121@gmail.com',style: GoogleFonts.viga(),),
                      ],
                    ),
                  ),
                  
                  IconButton(onPressed: (){
                   emailDialog(context);
                  }, icon: Icon(Icons.edit))
                ],
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 20,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.phone_android),
                        SizedBox(width: 20,),
                        Text('1234567890',style: GoogleFonts.viga(),),
                      ],
                    ),
                  ),
                  IconButton(onPressed: (){
                    phoneDialog(context);
                  }, icon: Icon(Icons.edit))

                ],
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 20,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 20,),
                        Text('Male',style: GoogleFonts.viga(),),
                      ],
                    ),
                  ),

                  IconButton(onPressed: (){
                     userDialog(context);
                  }, icon: Icon(Icons.edit))
                ],
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: Container(
              padding: EdgeInsets.only(left: 20,top: 10,bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 20,),
                        Text('6 DLF Industrial Area Monti Nagar\nNear Moti Nagar Metro Station\nPillar Number 311 office No. 311\nNew Delhi 111085',style: GoogleFonts.viga(),),
                      ],
                    ),
                  ),

                  IconButton(onPressed: (){
                     addressDialog(context);
                  }, icon: Icon(Icons.edit))
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
  Future<String?>alertDialog()=>
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Your Name',style: GoogleFonts.viga(fontWeight: FontWeight.bold,fontSize: 18),),
            content:  Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  autofocus: true,
                  cursorColor: Colors.grey,
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
            actions: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(10)
                ),
                
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Submit',style: GoogleFonts.viga(color: Colors.white),),

                ),
              ),
            ],
          );

        }

        );

  Future emailDialog( BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Your Email',style: GoogleFonts.viga(fontWeight: FontWeight.bold,fontSize: 18),),
            content:  Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  cursorColor: Colors.grey,
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
                      hintText: ('Enter Email'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            actions: <Widget>[
              Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(
                  child: Text('Submit',style: GoogleFonts.viga(color: Colors.white),),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          );
        });
  }
  Future phoneDialog( BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Your Mobile Number',style: GoogleFonts.viga(fontWeight: FontWeight.bold,fontSize: 18),),
            content:  Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.grey,
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
                      hintText: ('Enter Mobile Number'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            actions: <Widget>[
              Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(
                  child: Text('Submit',style: GoogleFonts.viga(color: Colors.white),),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          );
        });
  }
  Future userDialog( BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Your Gender',style: GoogleFonts.viga(fontWeight: FontWeight.bold,fontSize: 18),),
            content:  Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  cursorColor: Colors.grey,
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
                      hintText: ('Enter Gender'),
                      hintStyle:
                      GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            actions: <Widget>[
              Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(
                  child: Text('Submit',style: GoogleFonts.viga(color: Colors.white),),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          );
        });
  }
  Future addressDialog( BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Your Address',style: GoogleFonts.viga(fontWeight: FontWeight.bold,fontSize: 18),),
            content:  Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  cursorColor: Colors.grey,
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
            actions: <Widget>[
              Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(
                  child: Text('Submit',style: GoogleFonts.viga(color: Colors.white),),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          );
        });
  }

}

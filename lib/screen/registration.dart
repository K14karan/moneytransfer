import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/screen/otp.dart';
import 'package:shop/theme/color.dart';
import 'package:search_choices/search_choices.dart';
import 'package:image_picker/image_picker.dart';
class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  var items = [
    'New Delhi',
    'Mumbai',
    'Patna',
    'Varanasi',
    'Jaipur',
  ];
  String?yes;
  String? dropdownValue;
  String? dropdownValue2;
  bool second = false;
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
  final ImagePicker picker1 = ImagePicker();
  cameraFiles1() async {
    var cameraFile1 = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      image = cameraFiles1 as File?;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:  AssetImage('assets/images/money.jpg',),
                    // child: AssetImage('assets/images/money.jpg',),
                  ),
                  Image.asset('assets/images/close.png',color: background,height: 25,width: 25,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left: 20),
              child: Text('Registration',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(left:20,top: 30),
              child: Text('Name',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Enter Name'),
                      hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('Email',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Enter Email'),
                      hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('Mobile Number',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Enter Mobile Number'),
                      hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('Upload ID Proof',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: DropdownButtonFormField<String>(
                key: UniqueKey(),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6739B7), width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6739B7), width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Select Gender',
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
                  DropdownMenuItem<String>(
                    value: "3",
                    child: Text("Other"),
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
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('Password',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Enter Password'),
                      hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('Country',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20,10, 20, 0),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFF6739B7),width: 1)
                ),
                child:SearchChoices.single(
                  underline:Padding(
                    padding: EdgeInsets.all(5),
                  ) ,
                  items: items.map<DropdownMenuItem<String>>(( value) {
                    return DropdownMenuItem(

                      value: value,
                      child: Text(
                        value,
                        overflow: TextOverflow.visible,
                        style:  TextStyle(color: Colors.black87),
                      ),
                    );
                  }).toList(),
                  value: yes,
                  hint: "Select Country",
                  style: GoogleFonts.roboto(color:
                  background),
                  searchHint: "Select Country",
                  onChanged: (value) {
                    setState(() {
                      // _chosenValuefrom =
                      // sid[names.indexWhere((note) => note.startsWith(value))];
                      // // fromName = value;
                      // // fromFull = value;
                      //
                      // _chosenValueeto = value;
                      //
                      // print(_chosenValuefrom);
                    });
                    // Navigator.of(context).pop();
                  },
                  doneButton: "Done",
                  displayItem: (item, selected) {
                    return (Row(children: [
                      selected
                          ? Icon(
                        Icons.radio_button_checked,
                        color: Color(0xFF6739B7),
                      )
                          : Icon(
                        Icons.radio_button_unchecked,
                        color: Color(0xFF6739B7),
                      ),
                      SizedBox(width: 7),
                      Expanded(
                        child: item,
                      ),
                    ]));
                  },
                  isExpanded: true,
                )),
            Container(
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('State',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(20,10, 20, 0),
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFF6739B7),width: 1)
                ),
                child:SearchChoices.single(
                  underline:Padding(
                    padding: EdgeInsets.all(5),
                  ) ,
                  items: items.map<DropdownMenuItem<String>>(( value) {
                    return DropdownMenuItem(

                      value: value,
                      child: Text(
                        value,
                        overflow: TextOverflow.visible,
                        style:  TextStyle(color: Colors.black87),
                      ),
                    );
                  }).toList(),
                  value: yes,
                  hint: "Select State",
                  style: GoogleFonts.roboto(color:
                  background),
                  searchHint: "Select State",
                  onChanged: (value) {
                    setState(() {
                      // _chosenValuefrom =
                      // sid[names.indexWhere((note) => note.startsWith(value))];
                      // // fromName = value;
                      // // fromFull = value;
                      //
                      // _chosenValueeto = value;
                      //
                      // print(_chosenValuefrom);
                    });
                    // Navigator.of(context).pop();
                  },
                  doneButton: "Done",
                  displayItem: (item, selected) {
                    return (Row(children: [
                      selected
                          ? Icon(
                        Icons.radio_button_checked,
                        color: Colors.grey,
                      )
                          : Icon(
                        Icons.radio_button_unchecked,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 7),
                      Expanded(
                        child: item,
                      ),
                    ]));
                  },
                  isExpanded: true,
                )),
            Container(
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('District',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(20,10, 20, 0),
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFF6739B7),width: 1)
                ),
                child:SearchChoices.single(
                  underline:Padding(
                    padding: EdgeInsets.all(5),
                  ) ,
                  items: items.map<DropdownMenuItem<String>>(( value) {
                    return DropdownMenuItem(

                      value: value,
                      child: Text(
                        value,
                        overflow: TextOverflow.visible,
                        style:  TextStyle(color: Colors.black87),
                      ),
                    );
                  }).toList(),
                  value: yes,
                  hint: "Select District",
                  style: GoogleFonts.roboto(color:
                  background),
                  searchHint: "Select District",
                  onChanged: (value) {
                    setState(() {
                      // _chosenValuefrom =
                      // sid[names.indexWhere((note) => note.startsWith(value))];
                      // // fromName = value;
                      // // fromFull = value;
                      //
                      // _chosenValueeto = value;
                      //
                      // print(_chosenValuefrom);
                    });
                    // Navigator.of(context).pop();
                  },
                  doneButton: "Done",
                  displayItem: (item, selected) {
                    return (Row(children: [
                      selected
                          ? Icon(
                        Icons.radio_button_checked,
                        color: Colors.grey,
                      )
                          : Icon(
                        Icons.radio_button_unchecked,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 7),
                      Expanded(
                        child: item,
                      ),
                    ]));
                  },
                  isExpanded: true,
                )),
            Container(
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('City',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(20,10, 20, 0),
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFF6739B7),width: 1)
                ),
                child:SearchChoices.single(
                  underline:Padding(
                    padding: EdgeInsets.all(5),
                  ) ,
                  items: items.map<DropdownMenuItem<String>>(( value) {
                    return DropdownMenuItem(

                      value: value,
                      child: Text(
                        value,
                        overflow: TextOverflow.visible,
                        style:  TextStyle(color: Colors.black87),
                      ),
                    );
                  }).toList(),
                  value: yes,
                  hint: "Select City",
                  style: GoogleFonts.roboto(color:
                  background),
                  searchHint: "Select City",
                  onChanged: (value) {
                    setState(() {
                      // _chosenValuefrom =
                      // sid[names.indexWhere((note) => note.startsWith(value))];
                      // // fromName = value;
                      // // fromFull = value;
                      //
                      // _chosenValueeto = value;
                      //
                      // print(_chosenValuefrom);
                    });
                    // Navigator.of(context).pop();
                  },
                  doneButton: "Done",
                  displayItem: (item, selected) {
                    return (Row(children: [
                      selected
                          ? Icon(
                        Icons.radio_button_checked,
                        color: Colors.grey,
                      )
                          : Icon(
                        Icons.radio_button_unchecked,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 7),
                      Expanded(
                        child: item,
                      ),
                    ]));
                  },
                  isExpanded: true,
                )),
            Container(
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('Pin Code',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Enter Pin code'),
                      hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('Address',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Enter Address'),
                      hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('Pan Number',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Enter Pan Number'),
                      hintStyle: GoogleFonts.roboto(color: Colors.grey,fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10,left: 10)),
                )),
            Container(
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('Upload ID Proof',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: DropdownButtonFormField<String>(
                key: UniqueKey(),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6739B7), width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6739B7), width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter ID proof',
                  contentPadding: EdgeInsets.only(left: 10, top: 10),
                  suffixStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                value: dropdownValue2,
                items: [
                  DropdownMenuItem<String>(
                    value: "1",
                    child: Text("Driving Licence"),
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
                    dropdownValue2 = newStateId!;
                  });
                },
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Front',style: GoogleFonts.roboto(),),
                    SizedBox(height: 5,),
                    InkWell(
                      onTap: (){
                        cameraFile();
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey,width: 1),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(Icons.camera_alt,color: background,),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Back',style: GoogleFonts.roboto(),),
                    SizedBox(height: 5,),
                    InkWell(
                      onTap: (){
                        cameraFiles();
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(Icons.camera_alt,color: background,),
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left:20,top: 10),
              child: Text('Upload Selfie',style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        cameraFiles1();
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,width: 1),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(Icons.camera_alt,color: background,),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height:50,
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: background,
                    value: this.second,
                    onChanged: (bool? value) {
                      setState(() {
                        this.second = value!;
                      });
                    },
                  ),
                  Container(
                    alignment: Alignment.center,
                   // padding: EdgeInsets.all(20),
                    child: Center(
                        child: Text.rich(
                            TextSpan(
                                text: 'I accept ', style: TextStyle(
                                fontSize: 14, color: Colors.black
                            ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Terms and condition', style: GoogleFonts.roboto(
                                    fontSize: 14, color:background,
                                    decoration: TextDecoration.underline,
                                  ),

                                  ),
                                  TextSpan(
                                      text: ' & ', style: GoogleFonts.roboto(
                                      fontSize: 14, color: Colors.black
                                  ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Privacy Policy.', style: GoogleFonts.roboto(
                                            fontSize: 14, color: background,
                                            decoration: TextDecoration.underline
                                        ),

                                        )
                                      ]
                                  )
                                ]
                            )
                        )
                    ),
                  )



                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
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
                 Get.to(OtpPage());
                },
                child: Text('Proceed',style: GoogleFonts.roboto(color: Colors.white),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              child: TextButton(
                onPressed: (){},
                child: Text('Go Back',style: GoogleFonts.roboto(color: background),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:shop/customshape.dart';
import 'package:shop/homepage/self_account.dart';

import '../theme/color.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Payment History',
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
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  //keyboardType: TextInputType.number,
                  cursorColor: Colors.grey,
                  //style: const TextStyle(height: 0.4),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1,color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Color(0xFF6739B7)),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: ('Search'),
                      prefixIcon: Icon(
                        Icons.search,
                        color: background,
                      ),
                      hintStyle:
                          GoogleFonts.roboto(color: Colors.grey, fontSize: 12),
                      contentPadding: EdgeInsets.only(top: 10, left: 10)),
                )),
            Container(
              height: MediaQuery.of(context).size.height / 1.35,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.greenAccent[100],
                      backgroundImage:
                          AssetImage('assets/images/save-money.png'),
                    ),
                    title: Text(
                      'Paid to Rehan',
                      style: GoogleFonts.viga(fontSize: 12),
                    ),
                    subtitle: Text(
                      'Yesterday, 07:50 PM',
                      style: GoogleFonts.viga(fontSize: 10, color: Colors.grey),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Column(
                        children: [
                          Text(
                            '-₹ 1000.00',
                            style: GoogleFonts.viga(fontSize: 12),
                          ),
                          Text(
                            'from',
                            style: GoogleFonts.viga(fontSize: 10),
                          ),
                          Image.asset(
                            'assets/images/union.png',
                            height: 20,
                            width: 20,
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, position) {
                  return Divider(
                    height: 10,
                    thickness: 1,
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

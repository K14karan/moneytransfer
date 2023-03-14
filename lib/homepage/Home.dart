import 'package:flutter/material.dart';
import 'package:shop/customshape.dart';
import 'package:shop/homepage/add_money.dart';
import 'package:shop/homepage/enter_mobile.dart';
import 'package:shop/homepage/ime_transaction.dart';
import 'package:shop/homepage/self_account.dart';
import 'package:shop/homepage/send_money.dart';
import 'package:shop/homepage/transaction_history.dart';
import 'package:shop/theme/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: SizedBox(
            width: 50,
            height: 50,
            child: ClipOval(
              child: Image.asset('assets/images/money.jpg',),
            ),
          ),
        ),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text('ESewa',style: GoogleFonts.viga(color: Colors.white,),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: IconButton(onPressed: (){}, icon:Icon(Icons.notifications)),
          )
        ],
        automaticallyImplyLeading: false,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 7.0,
                              color: Colors.white)
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*.015,
                        ),
                        Image.asset('assets/images/wallet (3).png',height: 30,width: 30,color: Colors.grey,),
                        SizedBox(height: 5,),
                        Text('Wallet Balance',style: GoogleFonts.viga(),),
                        SizedBox(height: 5,),
                        Text('INR 12422.00',style: GoogleFonts.roboto(),),

                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){
                    Get.to(AddMoney());
                  },
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 7.0,
                                color: Colors.white)
                          ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*.02,
                          ),
                          Image.asset('assets/images/wallet (4).png',height: 30,width: 30,color: Colors.grey,),
                          SizedBox(height: 10,),
                          Text('Add Money',style: GoogleFonts.viga(),),


                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 7.0,
                            color: Colors.white)
                      ]
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/bannered.png',fit: BoxFit.cover,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                margin: EdgeInsets.only(left: 15,right: 15,bottom: 10,top: 10),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 7.0,
                          color: Colors.white)
                    ]
                ),
                child:   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Money Transfer',style: GoogleFonts.viga(fontSize: 16),),
                    SizedBox(height: 10,),
                    GridView.count(
                      scrollDirection: Axis.vertical,
                      primary: false,
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 2.0,
                      shrinkWrap: true,
                      children: [
                        InkWell(
                          onTap:(){
                            Get.to(SendMoney());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xFF6739B7),
                                child: Image.asset('assets/images/bank.png',color: Colors.white,height: 25,width: 25,),
                              ),
                              SizedBox(height:10,),
                              Text('To Bank A/C',style: GoogleFonts.viga(fontSize: 12),)
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(TransactionHistory());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xFF6739B7),
                                child: Image.asset('assets/images/file (1).png',color: Colors.white,height: 25,width: 25,),
                              ),
                              SizedBox(height: 10,),
                              Text('History',style: GoogleFonts.viga(fontSize: 12),)
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(SelfAccount());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xFF6739B7),
                                child: Image.asset('assets/images/user (3).png',color: Colors.white,height: 25,width: 25,),
                              ),
                              SizedBox(height: 10,),
                              Text('To Self A/C',style: GoogleFonts.viga(fontSize: 12),)
                            ],
                          ),
                        ),
                        InkWell(
                          onTap:(){
                            Get.to(RemittancePage());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xFF6739B7),
                                child: Image.asset('assets/images/bank.png',color: Colors.white,height: 25,width: 25,),
                              ),
                              SizedBox(height:10,),
                              Text('IME Remittance',style: GoogleFonts.viga(fontSize: 12),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

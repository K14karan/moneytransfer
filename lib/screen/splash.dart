import 'package:flutter/material.dart';
import 'package:shop/screen/mobile.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigethome();
  }

  _navigethome() async {
    await Future.delayed(const Duration(seconds:5), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>const MobileNumber()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image:
            DecorationImage(image: AssetImage('assets/images/money.jpg'),
               fit: BoxFit.cover
            ))
        ,
      ),
    );
  }
}

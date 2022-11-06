import 'package:carrot/src/utils/hex_converter.dart';
import 'package:carrot/src/views/login_page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  checkIfAuthenticated() async {
    await Future.delayed(const Duration(seconds: 5));
    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    checkIfAuthenticated().then((_) async {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) {
          return const LoginPage();
      },));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#49CEB0"),
      body: Center(
        child: Image.asset('assets/icons/splash_screen.png'),
      )
    );
  }
}
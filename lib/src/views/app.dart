import 'package:carrot/src/views/login_page/login_page.dart';
import 'package:carrot/src/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash-screen',
      routes: {
        '/' : (context) => const LoginPage(),
        '/splash-screen' : (context) => const SplashScreen()
      },
    );
  }
}
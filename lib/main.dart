// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laporan_kecelakaan/ui/pages/login_page.dart';
import 'package:laporan_kecelakaan/ui/pages/sign_up.dart';
import 'ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/sign-up': (context) => SignUp(),
      },
    );
  }
}

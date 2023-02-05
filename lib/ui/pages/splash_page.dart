// ignore_for_file: unused_import, prefer_const_constructors, duplicate_ignore

import 'dart:async';

import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              margin: EdgeInsets.only(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/medical.png'),
                ),
              ),
            ),
            Text(
              'Lapor Kecelakaan',
              style: blackTextStyle.copyWith(
                fontSize: 25,
                fontWeight: medium,
                letterSpacing: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

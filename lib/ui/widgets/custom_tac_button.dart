// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomTacButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const CustomTacButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: grayTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}

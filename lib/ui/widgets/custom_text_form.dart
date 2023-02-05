// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomTextForm extends StatelessWidget {
  final String title;
  final String hintText;
  bool obsecureText;
  CustomTextForm(
      {Key? key,
      required this.title,
      required this.hintText,
      this.obsecureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            cursorColor: blackColor,
            obscureText: obsecureText,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 55,
      decoration: BoxDecoration(
        color: redColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}

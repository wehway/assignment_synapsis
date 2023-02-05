// ignore_for_file: prefer_const_constructors, unused_element, dead_code

import 'package:flutter/material.dart';
import 'package:laporan_kecelakaan/ui/widgets/custom_button.dart';
import 'package:laporan_kecelakaan/ui/widgets/custom_tac_button.dart';
import 'package:laporan_kecelakaan/ui/widgets/custom_text_form.dart';
import '../../shared/theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 87),
        child: Center(
          child: Text(
            'Register dan laporkan\nKecelakaan disekitar',
            textAlign: TextAlign.center,
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget inputForm() {
      Widget nameInput() {
        return CustomTextForm(title: 'Full Name', hintText: 'Your full name');
      }

      Widget emailInput() {
        return CustomTextForm(title: 'Email address', hintText: 'Your email');
      }

      Widget passwordInput() {
        return CustomTextForm(
          title: 'Password',
          hintText: 'Your password',
          obsecureText: true,
        );
      }

      Widget registerButton() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomButton(
              text: 'Register',
              onPressed: () {},
            ),
            Container(
              width: 64,
              height: 55,
              decoration: BoxDecoration(
                color: redColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: IconButton(
                icon: const Icon(Icons.fingerprint),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        );
      }

      Widget tacButton() {
        return CustomTacButton(
            title: 'Sudah punya akun?',
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            });
      }

      return Container(
        margin: EdgeInsets.only(top: 52),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        // height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            registerButton(),
            tacButton(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          title(),
          inputForm(),
        ],
      ),
    );
  }
}

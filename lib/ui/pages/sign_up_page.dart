import 'package:flutter/material.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/ui/widgets/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget tacButton() {
      return Container(
        margin: EdgeInsets.only(top: 73, bottom: 73),
        alignment: Alignment.center,
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 16,
              decoration: TextDecoration.underline),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomFormField(
          title: 'Full Name',
          hintText: 'Your Full Name',
        );
      }

      Widget emailInput() {
        return CustomFormField(
          title: 'Email',
          hintText: 'Your Email',
        );
      }

      Widget passwordInput() {
        return CustomFormField(
          title: 'Password',
          hintText: 'Your Password',
          obscureText: true,
        );
      }

      Widget hobbyInput() {
        return CustomFormField(
          title: 'Hobby',
          hintText: 'Your Hobby',
        );
      }

      Widget submitButton() {
        return Container(
          width: 307,
          height: 55,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            },
            child: Text(
              'Get Started',
              style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 16),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)),
                backgroundColor: kPrimaryColor),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 33),
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton()
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 27, left: 32),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 24),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [title(), inputSection(), tacButton()],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:futurejob_app/shared.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                'Sign In',
                style: grayTextStyle,
              ),
              const SizedBox(height: 2),
              // Subtitle
              Text(
                'Build Your Career',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 40),
              // Illustration
              Center(
                child: Image.asset(
                  'assets/images/img_explore-jobs.png',
                  height: 240,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

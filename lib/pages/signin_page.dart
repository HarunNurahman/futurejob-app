import 'package:flutter/material.dart';
import 'package:futurejob_app/shared.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
              top: 30,
              bottom: bottomInset,
            ),
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
                ),
                const SizedBox(height: 40),
                // Text Field
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Email Text Field
                    Text(
                      'Email Address',
                      style: grayTextStyle,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: grayColor_2,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Password Text Field
                    Text(
                      'Password',
                      style: grayTextStyle,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: grayColor_2,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    // Sign In Button
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 45,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text('Sign In', style: whiteTextStyle),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

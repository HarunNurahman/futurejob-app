import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:futurejob_app/shared.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isEmailValid = true;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                ),
                const SizedBox(height: 40),
                // Text Field
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Email Address
                    Text(
                      'Email Address',
                      style: grayTextStyle,
                    ),
                    const SizedBox(height: 8),
                    // Email Text Form Field
                    SizedBox(
                      height: 55,
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.center,
                        controller: _emailController,
                        onChanged: (value) {
                          print(value);
                          bool isValid = EmailValidator.validate(value);
                          print(isValid);
                          if (isValid) {
                            setState(() {
                              isEmailValid = true;
                            });
                          } else {
                            setState(() {
                              isEmailValid = false;
                            });
                          }
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: grayColor_2,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: isEmailValid ? purpleColor_2 : redColor,
                            ),
                          ),
                          hintText: '',
                        ),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: isEmailValid ? purpleColor_2 : redColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Password
                    Text(
                      'Password',
                      style: grayTextStyle,
                    ),
                    const SizedBox(height: 8),
                    // Password Text Form Field
                    SizedBox(
                      height: 55,
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                          fillColor: grayColor_2,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: purpleColor_2,
                              ),
                            ),
                            hintText: ''),
                        style: const TextStyle(
                          fontSize: 16,
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
                          backgroundColor: purpleColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text('Sign In', style: whiteTextStyle),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Create New Account Button
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Create New Account',
                          style: grayTextStyle.copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
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

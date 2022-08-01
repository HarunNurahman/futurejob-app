import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:futurejob_app/pages/home_page.dart';
import 'package:futurejob_app/pages/signin_page.dart';
import 'package:futurejob_app/styles.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isEmailValid = true;
  bool isTextFilled = true;
  bool isUploaded = false;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: grayTextStyle,
                ),
                const SizedBox(height: 2),
                Text(
                  'Begin Your Journey',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 50),
                isUploaded ? showImg() : uploadImg(),
                const SizedBox(height: 30),
                // Form Field
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Full Name
                    Text(
                      'Full Name',
                      style: grayTextStyle,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.center,
                        controller: _nameController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          fillColor: grayColor_2,
                          filled: true,
                          hintText: '',
                          border: isTextFilled
                              ? InputBorder.none
                              : OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color:
                                        isTextFilled ? purpleColor_2 : redColor,
                                  ),
                                ),
                          errorText: isTextFilled
                              ? null
                              : 'Please enter your full name',
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: isTextFilled ? purpleColor_2 : redColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: isTextFilled
                                ? BorderSide.none
                                : BorderSide(
                                    color:
                                        isTextFilled ? purpleColor_2 : redColor,
                                  ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: isTextFilled ? purpleColor_2 : redColor,
                            ),
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: isTextFilled ? purpleColor_2 : redColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Email
                    Text(
                      'Email Address',
                      style: grayTextStyle,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
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
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          fillColor: grayColor_2,
                          filled: true,
                          errorText: isEmailValid
                              ? null
                              : 'Please enter a valid email address',
                          hintText: '',
                          border: isEmailValid
                              ? InputBorder.none
                              : OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color:
                                        isEmailValid ? purpleColor_2 : redColor,
                                  ),
                                ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: redColor,
                            ),
                          ),
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
                    SizedBox(
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
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
                          hintText: '',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Your Goal
                    Text(
                      'Your Goal (Optional)',
                      style: grayTextStyle,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
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
                          hintText: '',
                        ),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: purpleColor_2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    // Sign Up Button
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 45,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            _nameController.text.isEmpty
                                ? isTextFilled = false
                                : isTextFilled = true;
                          });
                          if (isTextFilled == true && isEmailValid) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          }
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: purpleColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text('Sign Up', style: whiteTextStyle),
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Back to Sign In Button
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Back to Sign In',
                          style: grayTextStyle.copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget uploadImg() {
    return Center(
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        onTap: () {
          setState(() {
            isUploaded = !isUploaded;
          });
        },
        child: Column(
          children: [
            // Outer circle
            Container(
              width: MediaQuery.of(context).size.width * 0.32,
              height: MediaQuery.of(context).size.width * 0.32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: purpleColor,
                border: Border.all(
                  color: purpleColor_2,
                  width: 2,
                ),
              ),
              // Whitespace between the outer circle and the inner circle
              child: Container(
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.width * 0.30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                // Inner circle
                child: Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 0.28,
                  height: MediaQuery.of(context).size.width * 0.28,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: grayColor_2,
                  ),
                  // Upload Icon
                  child: const Icon(
                    Icons.cloud_upload_sharp,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showImg() {
    return Center(
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        onTap: () {
          setState(() {
            isUploaded = !isUploaded;
          });
        },
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.32,
              height: MediaQuery.of(context).size.width * 0.32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: purpleColor,
                border: Border.all(
                  color: purpleColor_2,
                  width: 2,
                ),
              ),
              // Whitespace between the outer circle and the inner circle
              child: Container(
                padding: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.width * 0.30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                // Inner circle
                child: Image.asset('assets/images/img_profile_pic.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

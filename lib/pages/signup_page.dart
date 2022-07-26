import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:futurejob_app/pages/signin_page.dart';
import 'package:futurejob_app/shared.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isEmailValid = true;
  bool isTextFilled = false;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  

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
                Center(
                  // Outer circle
                  child: Container(
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
                ),
                const SizedBox(height: 30),
                // Text Field
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
                      height: 55,
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.center,
                        controller: _nameController,
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
                          hintText: '',
                        ),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: purpleColor_2,
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
                          hintText: '',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Full Name
                    Text(
                      'Your Goal (Optional)',
                      style: grayTextStyle,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 55,
                      child: TextFormField(
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.center,
                        controller: _nameController,
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
                          color: isTextFilled ? purpleColor_2 : redColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    // Sign Up Button
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
                        child: Text('Sign Up', style: whiteTextStyle),
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Create New Account Button
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
}

import 'package:flutter/material.dart';
import 'package:futurejob_app/shared.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.width * 0.30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    // Inner circle
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.width * 0.28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: grayColor_2,
                      ),
                      // Upload Icon
                      child: const Icon(
                        Icons.file_upload_outlined,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

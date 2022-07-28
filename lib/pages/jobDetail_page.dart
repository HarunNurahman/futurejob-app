import 'package:flutter/material.dart';
import 'package:futurejob_app/shared.dart';

class DetailJob extends StatelessWidget {
  const DetailJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 80,
                left: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/ic_google.png',
                    width: 60,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Front-End Developer',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Alphabet, Inc • DKI Jakarta',
                    style: grayTextStyle.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

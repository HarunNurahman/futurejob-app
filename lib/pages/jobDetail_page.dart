import 'package:flutter/material.dart';
import 'package:futurejob_app/styles.dart';

class DetailJob extends StatefulWidget {
  const DetailJob({Key? key}) : super(key: key);

  @override
  State<DetailJob> createState() => _DetailJobState();
}

class _DetailJobState extends State<DetailJob> {
  bool isApplied = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  // Applied Message
                  isApplied ? successApplyMessage() : const SizedBox(),
                  // Header (Company Logo, Job Desk, Company Name)
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 30),
                  // About The Job
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About the Job',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/ic_dot.png',
                                width: 12,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Full-Time On-Site',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/ic_dot.png',
                                width: 12,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Start at US\$18.000 per month',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  // Qualifications
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Qualifications',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/ic_dot.png',
                                width: 12,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Candidates must possess at least a \nBachelor\'s Degree.',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/ic_dot.png',
                                width: 12,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Able to use Microsoft Office and Google \nbased service,',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/ic_dot.png',
                                width: 12,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Have an excellent time management.',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  // Responsibilities
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Responsibilities',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/ic_dot.png',
                                width: 12,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Initiate and promote any programs, \nevents, training, or activities,',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/ic_dot.png',
                                width: 12,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Assessing and anticipating needs and \ncollaborate with Division.,',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  // Button
                  Center(
                    child: Column(
                      children: [
                        // Apply Button
                        isApplied ? cancelApplyButton() : applyButton(),
                        const SizedBox(height: 20),
                        // Message Recuiter Button
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Message Recuiter',
                            style: grayTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 35),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget applyButton() {
    return Container(
      width: MediaQuery.of(context).size.width * 1 / 2,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: purpleColor,
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            isApplied = !isApplied;
          });
        },
        child: Text(
          'Apply for Job',
          style: whiteTextStyle,
        ),
      ),
    );
  }

  Widget cancelApplyButton() {
    return Container(
      width: MediaQuery.of(context).size.width * 1 / 2,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: redColor,
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            isApplied = !isApplied;
          });
        },
        child: Text(
          'Cancel Apply',
          style: whiteTextStyle,
        ),
      ),
    );
  }

  Widget successApplyMessage() {
    return Container(
      decoration: BoxDecoration(
        color: grayColor_4,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 26,
          vertical: 10,
        ),
        child: Text(
          'You have applied this job and the\nrecruiter will contact you',
          maxLines: 2,
          style: grayTextStyle_2.copyWith(
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

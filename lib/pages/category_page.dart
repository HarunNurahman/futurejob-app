import 'package:flutter/material.dart';
import 'package:futurejob_app/shared.dart';
import 'package:futurejob_app/widgets/recentJob_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    Key? key,
    required this.jobTitleHome,
    required this.imgUrl,
  }) : super(key: key);

  final String jobTitleHome;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.45,
                      child: Image.asset(
                        imgUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            jobTitleHome,
                            style: whiteTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '12,309 Available',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Big Companies
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Big Companies',
                      style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 16),
                    RecentList(
                      imgUrl: 'assets/icons/ic_google.png',
                      jobTitle: 'Front-End Developer',
                      companyName: 'Alphabet Inc.',
                    ),
                    const SizedBox(height: 17),
                    RecentList(
                      imgUrl: 'assets/icons/ic_instagram.png',
                      jobTitle: 'UI Designer',
                      companyName: 'Instagram Inc.',
                    ),
                    const SizedBox(height: 17),
                    RecentList(
                      imgUrl: 'assets/icons/ic_facebook.png',
                      jobTitle: 'Back-End Developer',
                      companyName: 'Meta',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // New Startups
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Startups',
                      style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 16),
                    RecentList(
                      imgUrl: 'assets/icons/ic_google.png',
                      jobTitle: 'Front-End Developer',
                      companyName: 'Alphabet Inc.',
                    ),
                    const SizedBox(height: 17),
                    RecentList(
                      imgUrl: 'assets/icons/ic_instagram.png',
                      jobTitle: 'UI Designer',
                      companyName: 'Instagram Inc.',
                    ),
                    const SizedBox(height: 17),
                    RecentList(
                      imgUrl: 'assets/icons/ic_facebook.png',
                      jobTitle: 'Back-End Developer',
                      companyName: 'Meta',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

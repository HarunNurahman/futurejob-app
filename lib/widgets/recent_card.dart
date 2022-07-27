import 'package:flutter/material.dart';
import 'package:futurejob_app/shared.dart';

class RecentList extends StatelessWidget {
  const RecentList({
    Key? key,
    required this.imgUrl,
    required this.jobTitle,
    required this.companyName,
  }) : super(key: key);

  final String imgUrl;
  final String jobTitle;
  final String companyName;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imgUrl,
          width: 45,
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                jobTitle,
                style: blackTextStyle,
              ),
              const SizedBox(height: 2),
              Text(
                companyName,
                style: grayTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 18),
              Divider(
                color: grayColor_2,
                thickness: 2,
              ),
            ],
          ),
        )
      ],
    );
  }
}

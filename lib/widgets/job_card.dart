import 'package:flutter/material.dart';
import 'package:futurejob_app/pages/category_page.dart';
import 'package:futurejob_app/shared.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
    required this.text,
    required this.imgUrl,
  }) : super(key: key);

  final String text;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CategoryPage(
            jobTitleHome: text,
            imgUrl: imgUrl,
          ),
        ),
      ),
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgUrl),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text(
              text,
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

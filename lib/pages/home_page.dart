import 'package:flutter/material.dart';
import 'package:futurejob_app/shared.dart';
import 'package:futurejob_app/widgets/job_card.dart';
import 'package:futurejob_app/widgets/recentJob_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashFactory: NoSplash.splashFactory,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: BottomNavigationBar(
            currentIndex: 0,
            elevation: 0,
            iconSize: 24,
            showSelectedLabels: false,
            unselectedItemColor: grayColor,
            selectedItemColor: blackColor,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/ic_navbar_home.png'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/ic_navbar_notification.png'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/ic_navbar_favorite.png'),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/ic_navbar_profile.png'),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),
                const SizedBox(height: 30),
                _body(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      children: [
        // Name
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Howdy,',
              style: grayTextStyle,
            ),
            const SizedBox(height: 2),
            Text(
              'Harun Nurahman',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const Spacer(),
        // Profile Picture
        // Outer circle
        Container(
          width: MediaQuery.of(context).size.width * 0.18,
          height: MediaQuery.of(context).size.width * 0.18,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(
              color: purpleColor_2,
              width: 2,
            ),
          ),
          // Inner circle
          child: Container(
            padding: const EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width * 0.16,
            height: MediaQuery.of(context).size.width * 0.16,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            // Profile Picture
            child: Image.asset('assets/images/img_profile_pic.png'),
          ),
        ),
      ],
    );
  }

  Widget _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hot Categories',
          style: blackTextStyle,
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              JobCard(
                text: 'Website Developer',
                imgUrl: 'assets/images/img_category-1.png',
              ),
              const SizedBox(width: 16),
              JobCard(
                text: 'Mobile Developer',
                imgUrl: 'assets/images/img_category-2.png',
              ),
              const SizedBox(width: 16),
              JobCard(
                text: 'App Designer',
                imgUrl: 'assets/images/img_category-3.png',
              ),
              const SizedBox(width: 16),
              JobCard(
                text: 'Content Writer',
                imgUrl: 'assets/images/img_category-4.png',
              ),
              const SizedBox(width: 16),
              JobCard(
                text: 'Video Grapher',
                imgUrl: 'assets/images/img_category-5.png',
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Text(
          'Just Posted',
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
    );
  }
}

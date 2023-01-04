import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:test_app/src/utils/extentions.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
      decoration: const BoxDecoration(
        color: Color(0xff211F1F),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child:  GNav(
        gap: 11,
        activeColor: Colors.black,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 11),
        duration: const Duration(milliseconds: 400),
        tabBackgroundColor: const Color(0xffCDC1FF),
        color: Colors.white,
        tabs: [
          GButton(
            icon: Icons.settings,
            text: context.lang.settings,
          ),
          GButton(
            icon: Icons.qr_code,
            text: context.lang.myCodes,
          ),
          GButton(
            icon: Icons.person,
            text: context.lang.profile,
          ),
        ],
        selectedIndex: 1,
      ),
    );
  }
}

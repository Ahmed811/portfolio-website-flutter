import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:zidanportfolio/prefrence/user_prefrence.dart';
import 'package:zidanportfolio/widgets/site_logo.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../styles/style.dart';

class HeaderDesktop extends StatefulWidget {
  final Function(int) onNavItemTap;
  HeaderDesktop({super.key, required this.onNavItemTap});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.maxFinite,
      decoration: KHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                Get.changeThemeMode(UserPrefrence.isModeDark
                    ? ThemeMode.light
                    : ThemeMode.dark);
                UserPrefrence.isModeDark = !UserPrefrence.isModeDark;
                setState(() {});
              },
              icon: UserPrefrence.isModeDark
                  ? Icon(
                      Icons.light_mode,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.dark_mode,
                      color: Colors.white,
                    )),
          for (int i = 0; i < navItems.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                  onPressed: () {
                    widget.onNavItemTap(i);
                  },
                  child: Text(
                    navItems[i],
                    style: TextStyle(
                        color: ThemeData.dark().NavBarTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
            )
        ],
      ),
    );
  }
}

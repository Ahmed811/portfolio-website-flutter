import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zidanportfolio/prefrence/user_prefrence.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class DrawerMobile extends StatefulWidget {
  final Function(int) onNavItemTap;
  DrawerMobile({super.key, required this.onNavItemTap});

  @override
  State<DrawerMobile> createState() => _DrawerMobileState();
}

class _DrawerMobileState extends State<DrawerMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: CustomColor.scaffoldBgDark,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.close,
                          color: ThemeData.dark().NavBarTextColor),
                    ),
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
                  ],
                ),
              ),
            ),
            for (int i = 0; i < navItems.length; i++)
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                titleTextStyle: TextStyle(
                    color: ThemeData.dark().NavBarTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
                leading: Icon(
                  navIcons[i],
                  color: ThemeData.dark().NavBarTextColor,
                ),
                title: Text(
                  navItems[i],
                  style: TextStyle(
                    color: ThemeData.dark().NavBarTextColor,
                  ),
                ),
                onTap: () {
                  widget.onNavItemTap(i);
                },
              )
          ],
        ),
      ),
    );
  }
}

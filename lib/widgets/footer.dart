import 'package:flutter/material.dart';
import 'package:zidanportfolio/constants/colors.dart';
import '../app_info/AppInfo.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Text(
        footerDeveloperName,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: ThemeData.dark().BgTextColor1,
        ),
      ),
    );
  }
}

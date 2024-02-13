import 'package:flutter/material.dart';
import '../app_info/AppInfo.dart';
import '../constants/colors.dart';

class SiteLogo extends StatelessWidget {
  final VoidCallback? onTap;
  const SiteLogo({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        siteLogo,
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: "Airtrave",
            color: ThemeData.dark().BgLogo),
      ),
    );
  }
}

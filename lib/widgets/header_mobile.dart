import 'package:flutter/material.dart';
import 'package:zidanportfolio/widgets/site_logo.dart';

import '../styles/style.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: KHeaderDecoration,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          SiteLogo(
            onTap: onLogoTap,
          ),
          Spacer(),
          IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu)),
          SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}

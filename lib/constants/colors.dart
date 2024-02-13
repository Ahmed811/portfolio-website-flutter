import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zidanportfolio/prefrence/user_prefrence.dart';

class CustomColor {
  // Dark Theme Colors
  static const Color logoBgDark = Color(0xffFF9431);
  static const Color textColorNavBarDark = Color(0xffF9F9F9);
  static const Color scaffoldBgDark = Color(0xff333333);
  static const Color raisedButtonBgDark = Color(0xffFF9431);
  static const Color containerBgDark1 = Color(0xff413333);
  static const Color containerBgDark2 = Color(0xffffffff);
  static const Color textSkillBgDark = Color(0xff1f1818);
  static const Color textTitleProjectBgDark = Color(0x607D8BFF);
  static const Color textDescriptionProjectBgDark = Color(0xff000000);
  static const Color textFieldColorDark = Color(0xffffffff);
  static const Color textFieldBgDark = Color(0xff5d5a5a);
  static const Color textColorBgDark1 = Color(0xffF9F9F9);
  static const Color cardBgDark = Color(0xff5d5a5a);
  static const Color headerShaderMaskDark = Color(0xff9d9797);
  static const Color textSectionColorDark = Color(0xff000000);

  static const Color bgLight1 = Color(0xff333646);
  static const Color bgLight2 = Color(0xff424657);

  static const Color hintDark = Color(0xff666874);

  // Light Theme Colors

  static const Color logoBgLight = Color(0xffFF9431);
  static const Color textColorNavBarLight = Color(0xffF9F9F9);
  static const Color scaffoldBgLight = Color(0xffF8ECEC);
  static const Color raisedButtonBgLight = Color(0xffB5A692);
  static const Color containerBgLight1 = Color(0xffF8ECEC);
  static const Color containerBgLight2 = Color(0xffffffff);
  static const Color textSkillBgLight = Color(0xff1f1818);
  static const Color textTitleProjectBgLight = Color(0x607D8BFF);
  static const Color textDescriptionProjectBgLight = Color(0xff000000);
  static const Color textFieldColorLight = Color(0xff5d5a5a);

  static const Color textFieldBgLight = Color(0xffF8ECEC);
  static const Color textColorBgLight1 = Color(0xff637087);
  static const Color cardBgLight = Color(0xffffffff);
  static const Color headerShaderMaskLight = Color(0xffb0a4a4);
  static const Color textSectionColorLight = Color(0xff000000);

  static const Color bgDark1 = Color(0xffdcdcdc); // Lighter gray
  static const Color bgDark2 = Color(0xffcccccc); // Even lighter gray

  static const Color hintLight = Color(0xff999999); // Light gray for hints
}

extension MyAppTheme on ThemeData {
  Color get BgLogo => UserPrefrence.isModeDark
      ? CustomColor.logoBgDark
      : CustomColor.logoBgLight;
  Color get NavBarTextColor => UserPrefrence.isModeDark
      ? CustomColor.textColorNavBarDark
      : CustomColor.textColorNavBarLight;
  Color get BgScaffold => UserPrefrence.isModeDark
      ? CustomColor.scaffoldBgDark
      : CustomColor.scaffoldBgLight;
  Color get BgRaisedButton => UserPrefrence.isModeDark
      ? CustomColor.raisedButtonBgDark
      : CustomColor.raisedButtonBgLight;
  Color get BgContainer1 => UserPrefrence.isModeDark
      ? CustomColor.containerBgDark1
      : CustomColor.containerBgLight1;
  Color get BgContainer2 => UserPrefrence.isModeDark
      ? CustomColor.containerBgDark2
      : CustomColor.containerBgLight2;
  Color get BgTextSkill => UserPrefrence.isModeDark
      ? CustomColor.textSkillBgDark
      : CustomColor.textSkillBgLight;
  Color get BgTextTitleProject => UserPrefrence.isModeDark
      ? CustomColor.textTitleProjectBgDark
      : CustomColor.textTitleProjectBgLight;
  Color get BgTextDescriptionProject => UserPrefrence.isModeDark
      ? CustomColor.textDescriptionProjectBgDark
      : CustomColor.textDescriptionProjectBgLight;
  Color get TextFieldColor => UserPrefrence.isModeDark //
      ? CustomColor.textFieldColorDark
      : CustomColor.textFieldColorLight;
  Color get BgTextField => UserPrefrence.isModeDark //
      ? CustomColor.textFieldBgDark
      : CustomColor.textFieldBgLight;
  Color get BgTextColor1 => UserPrefrence.isModeDark
      ? CustomColor.textColorBgDark1
      : CustomColor.textColorBgLight1;
  Color get BgTextColor2 => UserPrefrence.isModeDark
      ? CustomColor.textFieldBgDark
      : CustomColor.textFieldBgLight;
  Color get BgCardColor => UserPrefrence.isModeDark
      ? CustomColor.cardBgDark
      : CustomColor.cardBgLight;
  Color get HeaderShaderMaskColor => UserPrefrence.isModeDark
      ? CustomColor.headerShaderMaskDark
      : CustomColor.headerShaderMaskLight;
  Color get sectionTextColor => UserPrefrence.isModeDark
      ? CustomColor.textSectionColorDark
      : CustomColor.textSectionColorLight;

  Color get hintText =>
      UserPrefrence.isModeDark ? CustomColor.hintDark : CustomColor.hintLight;
  Color get textColor =>
      UserPrefrence.isModeDark ? CustomColor.hintDark : CustomColor.hintLight;
  Color get cardColor =>
      UserPrefrence.isModeDark ? CustomColor.bgLight2 : CustomColor.bgDark2;
}

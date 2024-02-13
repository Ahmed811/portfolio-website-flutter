import 'package:flutter/material.dart';

import 'package:zidanportfolio/constants/nav_items.dart';
import 'package:zidanportfolio/constants/skill_items.dart';
import 'package:zidanportfolio/styles/style.dart';
import 'package:zidanportfolio/widgets/contact_section.dart';
import 'package:zidanportfolio/widgets/custom_text_field.dart';
import 'package:zidanportfolio/widgets/header_mobile.dart';
import 'package:zidanportfolio/widgets/site_logo.dart';
import 'package:zidanportfolio/widgets/skill_mobile.dart';
import 'package:zidanportfolio/widgets/skills_desktop.dart';
import 'package:zidanportfolio/widgets/project_card.dart';
import '../constants/size.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../constants/work_project.dart';
import '../widgets/project_section.dart';
import '../widgets/footer.dart';
import '../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;

    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          //
          endDrawer: constraints.maxWidth >= KMinDesktopWidth
              ? null
              : DrawerMobile(onNavItemTap: (int navItemIndex) {
                  scaffoldKey.currentState?.closeEndDrawer();
                  ScrollToSection(navItemIndex);
                }),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: scrollController,
            child: Column(
              children: [
                SizedBox(
                  key: navBarKeys.first,
                ),
                // //main
                if (constraints.maxWidth >= KMinDesktopWidth)
                  HeaderDesktop(
                    onNavItemTap: (int navItemIndex) {
                      ScrollToSection(navItemIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      if (scaffoldKey.currentState != null) {
                        scaffoldKey.currentState!.openEndDrawer();
                      }
                    },
                  ),
                if (constraints.maxWidth >= KMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),

                //skills
                Container(
                  key: navBarKeys[1],
                  width: screenWidth,
                  color: Color(0xffA4A4A4),
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "what i can do",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: ThemeData.dark().sectionTextColor),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      if (constraints.maxWidth >= KMidDesktopWidth)
                        SkillDesktop()
                      else
                        SkillMobile()
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //projects
                ProjectSection(
                  key: navBarKeys[2],
                ),
                SizedBox(
                  height: 30,
                ),
                //contact
                ContactSection(
                  key: navBarKeys[3],
                ),
                SizedBox(
                  height: 30,
                ),
                Footer() //footer
                ,
              ],
            ),
          ),
        ),
      );
    });
  }

  void ScrollToSection(int navIndex) {
    if (navIndex == 4) {
      return;
    }
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(microseconds: 500), curve: Curves.easeInOut);
  }
}

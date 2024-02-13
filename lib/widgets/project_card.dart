import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'package:zidanportfolio/utils/project_utils.dart';

//import 'dart:js' ;

class ProjectCard extends StatelessWidget {
  final ProjectUtils projectUtils;
  const ProjectCard({super.key, required this.projectUtils});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: 270,
      height: 370,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ThemeData.dark().BgCardColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            projectUtils.image,
            width: 270,
            height: 240,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              projectUtils.title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: ThemeData.dark().BgTextTitleProject),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              projectUtils.subTitle,
              style: TextStyle(
                  fontSize: 12,
                  color: ThemeData.dark().BgTextDescriptionProject),
            ),
          ),
          Spacer(),
          Container(
            color: ThemeData.dark().BgCardColor,

            // padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Available on:",
                    style: TextStyle(
                        // color: CustomColor.yellowSecondary,
                        fontSize: 10),
                  ),
                  Spacer(),
                  if (projectUtils.androidLink != null)
                    InkWell(
                      onTap: () {
                        //js.context.callMethod("open", [projectUtils.androidLink]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Image.asset(
                          "assets/images/android.png",
                          width: 17,
                        ),
                      ),
                    ),
                  if (projectUtils.iosLink != null)
                    InkWell(
                      onTap: () {
                        //js.context.callMethod("open", [projectUtils.iosLink]);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Image.asset(
                          "assets/images/ios.png",
                          width: 17,
                        ),
                      ),
                    ),
                  if (projectUtils.webLink != null)
                    InkWell(
                      onTap: () {
                        //js.context.callMethod("open", [projectUtils.webLink]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Image.asset(
                          "assets/images/web.png",
                          width: 17,
                        ),
                      ),
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

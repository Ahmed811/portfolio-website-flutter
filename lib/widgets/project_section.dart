import 'package:flutter/material.dart';
import 'package:zidanportfolio/constants/colors.dart';
import 'package:zidanportfolio/constants/work_project.dart';
import 'package:zidanportfolio/widgets/project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    return Container(
        padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
        width: screenWidth,
        child: Column(children: [
          Text(
            "Work Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              // color: CustomColor.whitePrimary
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1000),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCard(
                    projectUtils: workProjectUtils[i],
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "Hobby Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              // color: CustomColor.whitePrimary
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1000),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCard(
                    projectUtils: hobbyProjectUtils[i],
                  ),
              ],
            ),
          ),
        ]));
  }
}

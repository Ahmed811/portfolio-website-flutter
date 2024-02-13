import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (int i = 0; i < platformItems.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                      color: ThemeData.dark().BgContainer2,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    leading: Image.asset(
                      platformItems[i]['img'],
                      width: 26,
                    ),
                    title: Text(
                      platformItems[i]['title'],
                      style: TextStyle(color: ThemeData.dark().BgTextSkill),
                    ),
                  ),
                )
            ],
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < skillItems.length; i++)
                  Chip(
                    backgroundColor: ThemeData.dark().BgContainer2,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    label: Text(
                      skillItems[i]['title'],
                      style: TextStyle(color: ThemeData.dark().BgTextSkill),
                    ),
                    avatar: Image.asset(skillItems[i]['img']),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}

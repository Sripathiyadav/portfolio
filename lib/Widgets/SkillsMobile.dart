import 'package:flutter/material.dart';

import '../Constants/Skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 500.0,
      ),
      child: Column(
                      children: [
                        //platform
                        for (int i = 0; i < platformItems.length;i++)
                          Container(
                            margin: EdgeInsets.only(bottom: 5.0),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: ListTile(
                              contentPadding:const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                              leading: Image.asset(
                                platformItems[i]["img"],
                                width: 24,
                              ),
                              title: Text(platformItems[i]["title"]),
                            ),
                          ),
                          const SizedBox(height: 50,),
                        //skills
                        Wrap(
                          spacing: 10.0,
                          runSpacing: 10.0,
                          alignment: WrapAlignment.center,
                          children: [
                            for (int i = 0; i < skillItems.length;i++)
                                  Chip(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal: 16.0,
                                    ),
                                    backgroundColor: Colors.black12,
                                    label: Text(skillItems[i]["title"]),
                                    avatar: Image.asset(skillItems[i]["img"]),
                                  ),
                          ],
                        ),
                      ],
                    ),
    );
  }
}
import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../utils/project_utils.dart';
import 'Project_Card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
   // final screenHeight = screenSize.height;
    return Container(
              //height: double.maxFinite,
              width: screenWidth,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
              color: Colors.black38,
              child: Column(
                children: [
                  //hobby projects
                  const Text(
                    "Hobby Projects",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 50,),
                  //hobby project cards
                  ConstrainedBox(constraints:BoxConstraints(maxWidth: 900,),
                    child: Wrap(
                      spacing: 25,
                      runSpacing: 25,
                      children: [
                        for (int i = 0; i < hobbyProjectUtils.length;i++)
                          ProjectCardWidget(project: hobbyProjectUtils[i],
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 80,),
                  const Text(
                    "Acadamic Projects",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 50,),
                  //hobby project cards
                  ConstrainedBox(constraints: BoxConstraints(maxWidth: 900,),
                    child: Wrap(
                      spacing: 25,
                      runSpacing: 25,
                      children: [
                        for (int i = 0; i < adacamicProjectsUtils.length;i++)
                          ProjectCardWidget(project:adacamicProjectsUtils[i],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}
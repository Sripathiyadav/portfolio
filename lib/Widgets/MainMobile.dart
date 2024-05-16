import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
              margin: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 30.0
              ),
              height: screenHeight,
              constraints: BoxConstraints(
                minHeight: 560.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(colors: [
                        CustomColor.scaffoldBg.withOpacity(0.7),
                        CustomColor.scaffoldBg.withOpacity(0.7),
                      ]).createShader(bounds);
                    },
                    blendMode: BlendMode.srcATop,
                    child: Image.asset(
                      "assets/Avatar.png",
                      width: screenWidth/1.50,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    "Hi \nI'm Sripathi \nA Flutter Developer",
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // SizedBox(
                  //   width: 150,
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     child: const Text("Get in Touch"),
                  //     //color: CustomColor.yellowPrimary
                  //   ),
                  // ),
                ],
              ),
            );
  }
}
import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi \nI'm Sripathi \nA Flutter Developer",
                style: TextStyle(
                  fontSize: 20.0,
                  height: 2,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // SizedBox(
              //   width: 150,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       //ContactSection();
              //     },
              //     child: const Text("Get in Touch"),
              //     //color: CustomColor.yellowPrimary
              //   ),
              // ),
            ],
          ),
          Image.asset(
            "assets/Avatar.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}

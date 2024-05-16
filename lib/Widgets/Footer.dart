import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class footer extends StatelessWidget {
  const footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(vertical: 20,),
              alignment: Alignment.center,
              width: double.maxFinite,
              color: Colors.black54,
              child: const Text('Made by Sripathi with Flutter',style: TextStyle(
                fontWeight: FontWeight.w300,
                color: CustomColor.whiteSecondary,
                
              ),),
            );
  }
}
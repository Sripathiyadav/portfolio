
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/colors.dart';
import 'package:flutter_application_1/Widgets/CertificationsCard.dart';
import 'package:flutter_application_1/utils/Certifications_utils.dart';

class CertificationSection extends StatelessWidget {
  const CertificationSection({super.key});

  @override
  Widget build(BuildContext context) {
     final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    //final screenHeight = screenSize.height;
    return Container(
              //height: double.maxFinite,
              width: screenWidth,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
              color: Colors.black45,
              child: Column(
                children: [
                  //hobby projects
                  const Text(
                    "Certifications",
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
                        for (int i = 0; i < Certificates.length;i++)
                          CertificationCardWidget(certificates: Certificates[i],
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50,),
                  //hobby project cards
                  ConstrainedBox(constraints: BoxConstraints(maxWidth: 900,),
                  ),
                ],
              ),
            );
  }
}
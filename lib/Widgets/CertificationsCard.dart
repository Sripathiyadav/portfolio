import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Certifications_utils.dart';
import '../Constants/colors.dart';
import 'dart:js' as js;

class CertificationCardWidget extends StatelessWidget {
  const CertificationCardWidget({super.key, required this.certificates});
  final CertifificationUtils certificates;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 300.0,
      width: 240.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: CustomColor.bLight2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            certificates.image,
            height: 150,
            width: 240,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 15),
            child: Text(
              certificates.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
                //fontSize: 14.0,
              ),
            ),
          ),
          const Spacer(),
          //footer
          Container(
            color: CustomColor.bgkightl,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  'Check on : ',
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                if (certificates.drivelink != null)
                  InkWell(
                      onTap: () {
                        js.context.callMethod('open', [certificates.drivelink]);
                      },
                      child: Image.asset(
                        'assets/drive.png',
                        width: 19,
                      )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

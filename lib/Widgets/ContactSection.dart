import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/ContactLinks.dart';

import '../Constants/colors.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 150,
      width: double.maxFinite,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: Colors.black54,
      child: Column(
        children: [
          //title
          const Text(
            "Get in touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: CustomColor.whitePrimary,
            ),
          ),
          //section
          // Spacer(),
          //links
          const SizedBox(
            height: 20,
            child: ColoredBox(
              color: Colors.black45,
            ),
          ),
          Wrap(
            spacing: 16,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [ContactLinks.github]);
                },
                child: Image.asset(
                  "assets/GitHub.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [ContactLinks.linkedin]);
                },
                child: Image.asset(
                  "assets/Linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [ContactLinks.gmail]);
                },
                child: Image.asset(
                  "assets/Gmail.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [ContactLinks.instagram]);
                },
                child: Image.asset(
                  "assets/Instagram.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [ContactLinks.telegram]);
                },
                child: Image.asset(
                  "assets/telegram.png",
                  width: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

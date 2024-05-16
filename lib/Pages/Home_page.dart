import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/Constants/ContactLinks.dart';
import 'package:flutter_application_1/Constants/colors.dart';
import 'package:flutter_application_1/Widgets/CertificationSection.dart';
import 'package:flutter_application_1/Widgets/ContactSection.dart';
import 'package:flutter_application_1/Widgets/Footer.dart';
import 'package:flutter_application_1/Widgets/HeaderDesktop.dart';
import 'package:flutter_application_1/Widgets/HeaderMobile.dart';
import 'package:flutter_application_1/Widgets/MainMobile.dart';
import 'package:flutter_application_1/Widgets/Main_Desktop.dart';
import 'package:flutter_application_1/Widgets/ProjectsSection.dart';
import 'package:flutter_application_1/Widgets/SkillsDesktop.dart';
import 'package:flutter_application_1/Widgets/SkillsMobile.dart';

import '../Constants/Size.dart';
import '../Widgets/Drawer_Mobile.dart';
import 'dart:js' as js;


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  final List<GlobalKey> navbarKeys = List.generate(5, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    // final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, Constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: Constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerMobile(onNavItemTap: (int navIndex) {
                //call function
                scaffoldKey.currentState?.closeEndDrawer();
                scrollToSection(navIndex);
              }),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                key: navbarKeys.first,
              ),
              //main
              if (Constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(onNavMenuTap: (int navIndex) {
                  //call function
                  scrollToSection(navIndex);
                })
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (Constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),
              // Skills
              Container(
                key: navbarKeys[1],
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: Colors.black26,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text(
                      "What I can Do...",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                      //child: ColoredBox(color: Colors.black26),
                    ),
                    //platforms
                    if (Constraints.maxWidth >= kMedDesktopWidth)
                      const SkillsDesktop()
                    else
                      const SkillsMobile(),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 30,
              //   child: ColoredBox(color: Colors.black38),
              // ),
              //projects
              ProjectsSection(
                key: navbarKeys[2],
              ),
              // const SizedBox(
              //   height: 30,
              //   child: ColoredBox(color: Colors.black45),
              // ),
              //certificaions
              CertificationSection(
                key: navbarKeys[3],
              ),
              //contact
              ContactSection(
                key: navbarKeys[4],
              ),
              //footer
              const footer(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 5) {
      //
      js.context.callMethod("open",[ContactLinks.cv]);
      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
  }
}

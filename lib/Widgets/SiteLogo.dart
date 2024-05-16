import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Ink.image(image: AssetImage('assets/White Logo.png'),
      height: 30,
      width: 30,
      fit: BoxFit.cover,
      ),
      //Text("LOGO"),
    );
  }
}

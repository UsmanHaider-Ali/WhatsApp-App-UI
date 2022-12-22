import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayoutScreen;
  final Widget webLayoutScreen;

  const ResponsiveLayout({
    Key? key,
    required this.mobileLayoutScreen,
    required this.webLayoutScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth > 950) {
          return webLayoutScreen;
        } else {
          return mobileLayoutScreen;
        }
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_ui_app/colors.dart';
import 'package:whatsapp_ui_app/screens/mobile_layout_screen.dart';
import 'package:whatsapp_ui_app/screens/web_layout_screen.dart';
import 'package:whatsapp_ui_app/utils/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
          mobileLayoutScreen: MobileLayoutScreen(),
          webLayoutScreen: WebLayoutScreen()),
    );
  }
}

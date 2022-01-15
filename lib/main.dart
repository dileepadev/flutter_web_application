import 'package:flutter/material.dart';
import 'package:flutter_web_application/theme/app_theme_data.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppThemeData().appName,
      theme: AppThemeData.lightThemeOnly,
      // debugShowCheckedModeBanner: false,
      home: HomePage(
        title: AppThemeData().appName,
      ),
    );
  }
}

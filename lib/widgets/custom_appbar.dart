import 'package:flutter/material.dart';
import 'package:flutter_web_application/theme/app_theme_data.dart';

class CustomWidget {
  PreferredSizeWidget? customAppBar(String title) {
    return AppBar(
        automaticallyImplyLeading: false,
        // centerTitle: true,
        title: Text(
          title,
          // style: AppThemeData().headline6Style,
        ),
        actions: <Widget>[
          TextButton(
            style: AppThemeData().textButtonStyle,
            onPressed: () {
              debugPrint("Action 1 Pressed!");
            },
            child: const Text('Action 1'),
          ),
          TextButton(
            style: AppThemeData().textButtonStyle,
            onPressed: () {
              debugPrint("Action 2 Pressed!");
            },
            child: const Text('Action 2'),
          )
        ],
        backgroundColor: Colors.grey.shade900,
        elevation: 0.0,
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1.0));
  }
}

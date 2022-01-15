import 'package:flutter/material.dart';
import 'package:flutter_web_application/theme/app_theme_data.dart';

class Footer {
  const Footer({required this.context});

  final BuildContext context;

  Container footer() {
    return Container(
      height: 200.0,
      width: MediaQuery.of(context).size.width,
      color: AppThemeData().footerColor,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Developed By",
              style: AppThemeData().subtitle1StyleWhite,
            ),
            Text(
              "Dileepa Bandara",
              style: AppThemeData().subtitle1StyleWhite,
            ),
            Text(
              "©dileepabandara.dev | 2022",
              style: AppThemeData().subtitle1StyleWhite,
            ),
          ],
        ),
      ),
    );
  }
}

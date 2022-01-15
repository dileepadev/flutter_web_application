import 'package:flutter/material.dart';
import 'package:flutter_web_application/pages/second_page.dart';
import 'package:flutter_web_application/theme/app_theme_data.dart';
import 'package:flutter_web_application/widgets/custom_appbar.dart';
import 'package:flutter_web_application/widgets/footer.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidget().customAppBar(AppThemeData().appName),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/bg1.jpg",
              // height: 100.0,
              width: MediaQuery.of(context).size.width,
            ),
            Text(
              AppThemeData().appName,
              style: AppThemeData().headline6Style,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                child: const Text("Next Page")),
            Footer(context: context).footer(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_diary/pages/sign_in.dart';
import 'package:photo_diary/pages/sign_up.dart';

import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: SignInPage.routeName, page: () => SignInPage()),
        GetPage(name: SignUpPage.routeName, page: () => SignUpPage()),
      ],
      title: '摄影日记',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

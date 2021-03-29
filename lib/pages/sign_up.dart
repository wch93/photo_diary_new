import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_diary/util/controller.dart';

class SignUpPage extends StatelessWidget {
  static const routeName = "sign_up";
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 你可以让Get找到一个正在被其他页面使用的Controller，并将它返回给你。
    final Controller c = Get.find();
    return Container(
      child: Center(
        child: Text("注册页面"),
      ),
    );
  }
}

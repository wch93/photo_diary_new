import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_diary/pages/sign_up.dart';
import 'package:photo_diary/util/controller.dart';

class SignInPage extends StatelessWidget {
  static const routeName = "sign_in";
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      backgroundColor: Colors.white,
      // 外层添加一个手势，用于点击空白部分，回收键盘
      body: Container(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            SizedBox(height: 50),
            logoImageArea,
            SizedBox(height: 40),
            // inputTextArea,
            SizedBox(height: 30),
            // loginButtonArea,
            SizedBox(height: 30),
            bottomArea,
          ],
        ),
      ),
    );
  }
}

// logo 图片区域
Widget logoImageArea = Container(
  alignment: Alignment.topCenter,
  // 设置图片为圆形
  child: Image.asset(
    "assets/icon_light.png",
    height: 100,
    width: 100,
    fit: BoxFit.cover,
  ),
);

//忘记密码  立即注册
Widget bottomArea = Container(
  margin: EdgeInsets.only(right: 50, left: 50),
  child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      TextButton(
        child: Text(
          "忘记密码?",
          style: TextStyle(
            // color: Theme.of(context).primaryColor,
            fontSize: 16.0,
          ),
        ),
        //忘记密码按钮，点击执行事件
        onPressed: () {},
      ),
      TextButton(
        child: Text(
          "快速注册",
          style: TextStyle(
            // color: Theme.of(context).primaryColor,
            fontSize: 16.0,
          ),
        ),
        //点击快速注册、执行事件
        onPressed: () => Get.toNamed(SignUpPage.routeName),
      )
    ],
  ),
);

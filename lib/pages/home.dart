import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_diary/components/drawer.dart';
import 'package:photo_diary/pages/sign_in.dart';
import 'package:photo_diary/util/controller.dart';

class Home extends StatelessWidget {
  @override
  Widget build(context) {
    // 使用Get.put()实例化你的类，使其对当下的所有子路由可用。
    final Controller c = Get.put(Controller());

    return Scaffold(
      // 使用Obx(()=>每当改变计数时，就更新Text()。
      appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),

      // 用一个简单的Get.to()即可代替Navigator.push那8行，无需上下文！
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Other"),
          onPressed: () => Get.to(SignInPage()),
        ),
      ),
      drawer: drawerWidget,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

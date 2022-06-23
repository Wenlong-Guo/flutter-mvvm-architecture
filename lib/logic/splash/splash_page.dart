import 'dart:async';

import 'package:flutter_mvvm_architecture/import.dart';
import 'package:flutter_mvvm_architecture/logic/home/home_page.dart';

import 'splash_view_model.dart';

/// * Description: 启动页
/// * Author:      郭文龙
/// * Date:        2022/6/23 2:15
/// * Email:       guowenlong20000@sina.com
class SplashPage extends BasePage<SplashViewModel> {
  const SplashPage({Key? key}) : super(key: key);

  static const route = '/splash';

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 3), () => Get.offAndToNamed(HomePage.route));
    return Center(
        child: Column(children: <Widget>[
      Image.asset(
        "assets/images/3.0x/native_splash.png",
        // "assets/images/native_splash_3.png",
        alignment: Alignment.topCenter,
      )
    ]));
  }
}

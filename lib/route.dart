import 'package:flutter_mvvm_architecture/import.dart';
import 'package:flutter_mvvm_architecture/logic/detail/webview_page.dart';
import 'package:flutter_mvvm_architecture/logic/detail/webview_view_model.dart';
import 'package:flutter_mvvm_architecture/logic/home/home_view_model.dart';
import 'package:flutter_mvvm_architecture/logic/splash/splash_page.dart';
import 'package:flutter_mvvm_architecture/repository/home_repository.dart';

import 'logic/home/home_page.dart';
import 'logic/login/login_page.dart';
import 'logic/login/login_view_model.dart';
import 'logic/splash/splash_view_model.dart';

/// * Description: 路由
/// * Author:      郭文龙
/// * Date:        2022/6/22 3:08
/// * Email:       guowenlong20000@sina.com
class Routes {
  static const initial = WebViewPage.route;

  static final List<GetPage> routes = [
    GetPage(
        name: SplashPage.route,
        page: () => const SplashPage(),
        binding: BindingsBuilder(() {
          Get.lazyPut<SplashViewModel>(() => SplashViewModel());
        })),
    GetPage(
        name: HomePage.route,
        page: () => HomePage(),
        binding: BindingsBuilder(() {
          Get.lazyPut<HomeViewModel>(() => HomeViewModel());
          Get.lazyPut<HomeRepository>(() => HomeRepository());
        })),
    GetPage(
        name: LoginPage.route,
        page: () => const LoginPage(),
        binding: BindingsBuilder(() {
          Get.lazyPut<LoginViewModel>(() => LoginViewModel());
        })),
    GetPage(
        name: WebViewPage.route,
        page: () => const WebViewPage(),
        binding: BindingsBuilder(() {
          Get.lazyPut<WebViewViewModel>(() => WebViewViewModel());
        })),
  ];
}

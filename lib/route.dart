import 'package:flutter_mvvm_architecture/import.dart';
import 'package:flutter_mvvm_architecture/logic/home/home_view_model.dart';
import 'package:flutter_mvvm_architecture/logic/splash/splash_page.dart';

import 'logic/home/home_page.dart';
import 'logic/login/login_page.dart';
import 'logic/login/login_view_model.dart';
import 'logic/splash/splash_view_model.dart';

/// * Description: 路由
/// * Author:      郭文龙
/// * Date:        2022/6/22 3:08
/// * Email:       guowenlong20000@sina.com
class Routes {
  static const initial = HomePage.route;

  static final List<GetPage> routes = [
    GetPage(
        name: SplashPage.route,
        page: () => const SplashPage(),
        binding: BindingsBuilder(() {
          Get.lazyPut<SplashViewModel>(() => SplashViewModel());
        })),
    GetPage(
        name: HomePage.route,
        page: () => const HomePage(),
        binding: BindingsBuilder(() {
          Get.lazyPut<HomeViewModel>(() => HomeViewModel());
        })),
    GetPage(
        name: LoginPage.route,
        page: () => const LoginPage(),
        binding: BindingsBuilder(() {
          Get.lazyPut<LoginViewModel>(() => LoginViewModel());
        })),
  ];
}

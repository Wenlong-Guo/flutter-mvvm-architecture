import 'package:flutter_mvvm_architecture/import.dart';
import 'package:flutter_mvvm_architecture/logic/home/fragment/about_fragment.dart';
import 'package:flutter_mvvm_architecture/logic/home/fragment/main_fragment.dart';
import 'package:flutter_mvvm_architecture/logic/home/fragment/search_fragment.dart';

import 'home_view_model.dart';

/// * Description: 首页
/// * Author:      郭文龙
/// * Date:        2022/6/23 2:20
/// * Email:       guowenlong20000@sina.com
class HomePage extends BasePage<HomeViewModel> {
  HomePage({Key? key}) : super(key: key);

  static const route = '/home';

  ///点击导航项是要显示的页面
  final pages = [
    const MainPage(),
    const SearchPage(),
    const AboutPage(),
  ];

  ///底部导航
  final List<BottomNavigationBarItem> bottomNavItems = [
    const BottomNavigationBarItem(
        backgroundColor: Colors.black, icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(
        backgroundColor: Colors.black,
        icon: Icon(Icons.search),
        label: "Search"),
    const BottomNavigationBarItem(
        backgroundColor: Colors.black,
        icon: Icon(Icons.person),
        label: "About"),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            type: BottomNavigationBarType.shifting,
            currentIndex: controller.currentIndex.value,
            onTap: (index) {
              controller.currentIndex.value = index;
            },
          ),
          body: pages[controller.currentIndex.toInt()],
        ));
  }
}

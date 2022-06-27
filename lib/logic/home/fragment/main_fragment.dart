import 'package:flutter_mvvm_architecture/import.dart';
import 'package:flutter_mvvm_architecture/logic/home/home_view_model.dart';

/// * Description: 主页
/// * Author:      郭文龙
/// * Date:        2022/6/27 10:14
/// * Email:       guowenlong20000@sina.com
class MainPage extends BasePage<HomeViewModel> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getHome();
    return Obx(() => Container(
          color: const Color(0xFFEFEFEF),
          child: ListView.builder(
            itemCount: controller.listSize.value,
            itemBuilder: (context, index) {
              return getItem(index);
            },
          ),
        ));
  }

  Widget getItem(int index) {
    return Image.network(
      controller.list[index].images?.jpg?.largeImageUrl ?? "",
      fit: BoxFit.fitWidth,
    );
  }
}

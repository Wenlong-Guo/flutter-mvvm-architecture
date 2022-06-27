import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_mvvm_architecture/bean/anime.dart';
import 'package:flutter_mvvm_architecture/import.dart';
import 'package:flutter_mvvm_architecture/repository/home_repository.dart';

/// * Description: 首页 的 ViewModel
/// * Author:      郭文龙
/// * Date:        2022/6/23 2:20
/// * Email:       guowenlong20000@sina.com
class HomeViewModel extends BaseViewModel {
  HomeRepository homeRepository = Get.find();
  var currentIndex = 0.obs;
  EasyRefreshController controller = EasyRefreshController();
  var listSize = 0.obs;
  var currentPage = 0;
  List<Data> list = [];

  @override
  void onDestroy() {}

  Future<void> getHome(int page) async {
    var response = await launch(() async => homeRepository.getTopAnime(page));
    listSize.value = response.data?.data?.length ?? 0;
    if (response.data?.pagination?.currentPage != null) {
      currentPage = response.data?.pagination?.currentPage ?? 0;
    }
    if (page != 0) {
      list.addAll(response.data?.data ?? []);
      controller.finishLoad(success: true, noMore: false);
    } else {
      list = response.data?.data ?? [];
      controller.finishRefresh(success: true);
    }
  }
}

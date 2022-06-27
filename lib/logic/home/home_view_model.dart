import 'package:flutter_easyloading/flutter_easyloading.dart';
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
  var listSize = 0.obs;
  List<Data> list = [];

  @override
  void onDestroy() {}

  Future<void> getHome() async {
    var response = await launch(() async => homeRepository.getTopAnime());
    listSize.value = response.data?.data?.length ?? 0;
    list = response.data?.data ?? [];
    EasyLoading.showToast(response.data.toString());
  }
}

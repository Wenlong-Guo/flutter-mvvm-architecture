import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// * Description: SharedPreferences 的 Service
/// * Author:      郭文龙
/// * Date:        2022/6/11 0:25
/// * Email:       guowenlong20000@sina.com
class PrefsService extends GetxService {
  late Rx<SharedPreferences> sp;

  Future<PrefsService> init() async {
    sp = (await SharedPreferences.getInstance()).obs;
    return this;
  }
}

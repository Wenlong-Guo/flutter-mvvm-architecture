import 'package:flutter_mvvm_architecture/import.dart';
import 'package:flutter_mvvm_architecture/service/auth_service.dart';

import 'app.dart';

/// * Description: 主函数
/// * Author:      郭文龙
/// * Date:        2022/6/23 2:43
/// * Email:       guowenlong20000@sina.com
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => PrefsService().init());
  runApp(const App());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black,
    systemNavigationBarColor: Colors.black,
    statusBarBrightness: Brightness.dark,
  ));
}

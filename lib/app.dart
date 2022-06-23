import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_mvvm_architecture/import.dart';
import 'package:flutter_mvvm_architecture/language/language.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'route.dart';

/// * Description:
/// * Author:      郭文龙
/// * Date:        2022/6/22 3:07
/// * Email:       guowenlong20000@sina.com
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return ScreenUtilInit(
  //     designSize: const Size(360, 690),
  //     minTextAdapt: true,
  //     splitScreenMode: true,
  //     builder: (context, child) {
  //       return GetMaterialApp(
  //         debugShowCheckedModeBanner: false,
  //         enableLog: true,
  //         initialRoute: Routes.initial,
  //         theme: ThemeData(
  //           brightness: Brightness.light,
  //         ),
  //         getPages: Routes.routes,
  //         translations: Language(),
  //         locale: Language.locale,
  //         fallbackLocale: Language.fallbackLocale,
  //         builder: EasyLoading.init(),
  //       );
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: Routes.initial,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      getPages: Routes.routes,
      translations: Language(),
      locale: Language.locale,
      fallbackLocale: Language.fallbackLocale,
      builder: EasyLoading.init(),
    );
  }
}

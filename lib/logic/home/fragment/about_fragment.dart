import 'package:flutter_mvvm_architecture/import.dart';

import '../home_view_model.dart';

/// * Description: 关于作者
/// * Author:      郭文龙
/// * Date:        2022/6/27 10:13
/// * Email:       guowenlong20000@sina.com
class AboutPage extends BasePage<HomeViewModel> {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("about"),
    );
  }
}

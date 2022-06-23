import 'package:flutter_mvvm_architecture/import.dart';

import 'home_view_model.dart';

/// * Description: 首页
/// * Author:      郭文龙
/// * Date:        2022/6/23 2:20
/// * Email:       guowenlong20000@sina.com
class HomePage extends BasePage<HomeViewModel> {
  const HomePage({Key? key}) : super(key: key);

  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello World',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Text(
              'by 郭文龙',
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

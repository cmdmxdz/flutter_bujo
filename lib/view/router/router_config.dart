import 'package:a_bujo/view/page/home_page.dart';
import 'package:a_bujo/view/page/splash_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

/// 路由配置文件
class RouterConfig {
  static void configureRoutes(FluroRouter router) {
    /// 启动页
    var splashPage = Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return SplashPage();
    });
    router.define("SplashPage", handler: splashPage);

    /// 首页
    var homePage = Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return HomePage();
    });
    router.define("HomePage", handler: homePage);
  }
}

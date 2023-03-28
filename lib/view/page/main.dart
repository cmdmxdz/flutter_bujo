import 'package:a_bujo/view/page/splash_page.dart';
import 'package:a_bujo/view/router/router_config.dart';
import 'package:a_bujo/view/router/router_helper.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _MyAppState() {
    final router = FluroRouter();
    RouterConfig.configureRoutes(router);
    RouterHelper.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}

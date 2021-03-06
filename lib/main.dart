import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:math_faculty_app/pages/drawer_items_screens/soft_screen.dart';
import 'package:math_faculty_app/pages/news_and_events/news_and_events_sreen.dart';
import 'package:math_faculty_app/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final routes = <String, WidgetBuilder>{
    // The path that creates the Home Screen
    '/Home': (BuildContext context) => const NewsAndEventsScreen()
  };

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return GetMaterialApp(
      defaultTransition: Transition.rightToLeft,
      transitionDuration: Duration(microseconds: 200),
      getPages: [
        GetPage(name: '/software', page: () => SoftScreen()),
      ],
      title: 'Матфак Яргу',
      theme: ThemeData(),
      home: const SplashScreen(nextRoute: '/Home'),
      routes: routes,
    );
  }
}

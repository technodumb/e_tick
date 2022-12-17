import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/home',
      routes: routes,
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
    ),
  );
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

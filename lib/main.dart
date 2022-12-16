import 'package:flutter/material.dart';

import 'routes.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/home',
      routes: routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}

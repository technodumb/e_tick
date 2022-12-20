import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/provider.dart';
import 'routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MenuProvider()),
        ChangeNotifierProvider(create: (context) => MovieSelectProvider()),
        ChangeNotifierProvider(create: (context) => SeatSelectProvider()),
      ],
      child: MaterialApp(
        initialRoute: '/home',
        routes: routes,
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
      ),
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

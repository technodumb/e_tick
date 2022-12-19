import 'package:flutter/material.dart';

class MenuProvider extends ChangeNotifier {
  bool _isMenuOpened = false;
  bool get isMenuOpened => _isMenuOpened;

  void toggleMenu() {
    _isMenuOpened = !_isMenuOpened;
    notifyListeners();
  }
}

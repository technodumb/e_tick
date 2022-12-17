import 'package:flutter/material.dart';

class MenuProvider extends ChangeNotifier {
  bool _isMenuOpened = false;
  bool get isMenuOpened => _isMenuOpened;

  void toggleMenu() {
    _isMenuOpened = !_isMenuOpened;
    notifyListeners();
  }
}

class MovieSelectProvider extends ChangeNotifier {
  int _hoveredMovie = -1;
  int get hoveredMovie => _hoveredMovie;

  void setHoveredMovie(int movieId) {
    _hoveredMovie = movieId;
    notifyListeners();
  }

  int _selectedMovie = 0;
  int get selectedMovie => _selectedMovie;

  void selectMovie(int movieIndex) {
    _selectedMovie = movieIndex;
    notifyListeners();
  }
}

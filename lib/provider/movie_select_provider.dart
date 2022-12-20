import 'package:e_tick/database/movie_seats.dart';
import 'package:flutter/material.dart';

class MovieSelectProvider extends ChangeNotifier {
  MovieSelectProvider() {
    showListOptions.processShowList();
  }
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

  DateTime _selectedDate = DateTime.now();
  DateTime get selectedDate => _selectedDate;

  void selectDate(DateTime date) {
    _selectedDate = date;
    notifyListeners();
  }

  final ShowListOptions _showListOptions = ShowListOptions();
  ShowListOptions get showListOptions => _showListOptions;

  int _selectedSlot = 0;
  int get selectedSlot => _selectedSlot;

  void selectSlot(int slotIndex) {
    _selectedSlot = slotIndex;
    notifyListeners();
  }

  List<bool> get showSeats {
    return showListOptions.getShowSeatsByIndexAndDateAndTime(
      selectedMovie,
      selectedDate,
      selectedSlot,
    )[0];
  }
}

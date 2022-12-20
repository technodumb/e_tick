import 'package:e_tick/provider/movie_select_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class SeatSelectProvider extends ChangeNotifier {
  List<bool> _preselectedSeats = [];
  List<bool> _selectedSeats = List.generate(100, (index) => false);
  final List<int> _preselectedSeatLocs = [];
  final List<int> _selectedSeatLocs = [];

  get preselectedSeats => _preselectedSeats;
  get selectedSeats => _selectedSeats;
  get preselectedSeatLocs => _preselectedSeatLocs;
  get selectedSeatLocs => _selectedSeatLocs;

  void initialSetSeats(List<bool> seats) {
    _preselectedSeats = List<bool>.from(seats);
    // get seat locs from selected seats
    for (int i = 0; i < _preselectedSeats.length; i++) {
      if (_preselectedSeats[i]) {
        _preselectedSeatLocs.add(i);
      }
    }
    notifyListeners();
  }

  void toggleSeat(int seatIndex) {
    if (_selectedSeats[seatIndex]) {
      _selectedSeatLocs.remove(seatIndex);
    } else {
      _selectedSeatLocs.add(seatIndex);
      _selectedSeatLocs.sort();
    }
    _selectedSeats[seatIndex] = !_selectedSeats[seatIndex];
    notifyListeners();
  }
}

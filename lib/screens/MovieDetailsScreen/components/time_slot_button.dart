import 'package:e_tick/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'seat_select_dialog.dart';

class TimeSlotButton extends StatelessWidget {
  final int slotIndex;
  const TimeSlotButton({super.key, required this.slotIndex});

  @override
  Widget build(BuildContext context) {
    final movieSelectProvider = Provider.of<MovieSelectProvider>(context);
    final selectedIndex = movieSelectProvider.selectedMovie;
    final SeatSelectProvider seatSelectProvider =
        Provider.of<SeatSelectProvider>(context);
    final showListOptions = movieSelectProvider.showListOptions;
    final List getSlotIndices = showListOptions.getShowTimesByIndexAndDate(
        selectedIndex, movieSelectProvider.selectedDate);
    // print(showTimeSlots);
    List<String> timeSlots = ["9:00 AM", "2:00 PM", "8:00 PM"];
    return Visibility(
      visible: getSlotIndices.contains(slotIndex),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextButton(
          style: TextButton.styleFrom(
            fixedSize: Size(200, 50),
            padding: EdgeInsets.all(20),
            backgroundColor: Colors.green,
          ),
          onPressed: () {
            seatSelectProvider.initialSetSeats(movieSelectProvider.showSeats);
            movieSelectProvider.selectSlot(slotIndex);
            showDialog(
                context: context, builder: (context) => SeatSelectDialog());
          },
          child: Text(
            timeSlots[slotIndex],
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

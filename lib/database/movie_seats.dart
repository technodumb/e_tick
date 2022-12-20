class ShowInfoDB {
  final int index;
  final int timeSlot;
  final DateTime date;
  List<bool> seats;
  ShowInfoDB({
    required this.index,
    required this.timeSlot,
    required this.date,
    required this.seats,
  });
}

class ShowListOptions {
  List<ShowInfoDB> showList = [];
  void processShowList() {
    for (var date in rawdata.keys) {
      for (var timeSlot in rawdata[date]!.keys) {
        for (var index in rawdata[date]![timeSlot]!) {
          for (var i in index.keys) {
            showList.add(
              ShowInfoDB(
                index: i,
                timeSlot: timeSlot,
                date: date,
                seats: index[i]!,
              ),
            );
          }
        }
      }
    }
  }

  List<ShowInfoDB> getShowList() {
    return showList;
  }

  List<ShowInfoDB> getShowListByIndex(int index) {
    return showList.where((element) => element.index == index).toList();
  }

  List<DateTime> getShowDatesByIndex(int index) {
    return getShowListByIndex(index).map((e) => e.date).toList();
  }

  List getShowTimesByIndexAndDate(int index, DateTime date) {
    return getShowListByIndex(index)
        .where((show) => show.date.isSameDate(date))
        .map((show) => show.timeSlot)
        .toList();
  }

  List getShowSeatsByIndexAndDateAndTime(int index, DateTime date, int time) {
    return getShowListByIndex(index)
        .where((show) => show.date.isSameDate(date) && show.timeSlot == time)
        .map((show) => show.seats)
        .toList();
  }

  bool containsDate(List<DateTime> dateList, DateTime date) {
    for (DateTime datetime in dateList) {
      if (datetime.isSameDate(date)) return true;
    }
    return false;
  }
}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

Map rawdata = {
  DateTime(2022, 12, 20): {
    0: [
      {0: createSeatList()},
      {1: createSeatList()},
      {6: createSeatList()},
    ],
    1: [
      {0: createSeatList()},
    ],
    2: [
      {6: createSeatList()},
    ],
  },
  DateTime(2022, 12, 21): {
    0: [
      {1: createSeatList()},
    ],
    1: [
      {0: createSeatList()},
      {1: createSeatList()},
    ],
    2: [
      {0: createSeatList()},
      {6: createSeatList()},
    ],
  },
  DateTime(2022, 12, 22): {
    0: [
      {1: createSeatList()},
      {6: createSeatList()},
    ],
    2: [
      {1: createSeatList()},
    ],
  },
  DateTime(2022, 12, 23): {
    0: [
      {0: createSeatListDiff()},
      {1: createSeatList()},
      {6: createSeatList()},
    ],
    2: [
      {0: createSeatListDiff()},
      {1: createSeatList()},
      {6: createSeatList()},
    ],
  },
};

List<bool> createSeatList() {
  return List.generate(100, (index) => false);
}

List<bool> createSeatListDiff() {
  return List.generate(100, (index) => index % 2 == 0);
}

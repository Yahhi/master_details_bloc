import 'dart:async';

import 'package:rxdart/rxdart.dart';

class Bloc {
  StreamController<String> _selectedItemController = new BehaviorSubject();

  Stream<String> get selectedItem => _selectedItemController.stream;
  final List<String> items = _getItems();

  void setSelected(String item) {
    //if screen is large enough to show both fragments
    _selectedItemController.add(item);
    //if screen is small there can be different logic to open new screen
    // instead of selecting an item and showing it.
  }

  static List<String> _getItems() {
    List<String> list = new List();
    list.add("First");
    list.add("Second");
    list.add("Third");
    list.add("Forth");
    return list;
  }
}

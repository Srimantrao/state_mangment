import 'package:flutter/cupertino.dart';

class CountController with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void plus() {
    _count++;
    notifyListeners();
  }
}

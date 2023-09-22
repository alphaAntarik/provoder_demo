import 'package:flutter/material.dart';

class StateManagementWithProvider extends ChangeNotifier {
  String? _data1;
  String? _data2;

  String? get data1 => _data1;
  String? get data2 => _data2;

  void setData1(String newData) {
    _data1 = newData;
    notifyListeners();
  }

  void setData2(String newData) {
    _data2 = newData;
    notifyListeners();
  }
}

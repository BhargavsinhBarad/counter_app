import 'package:counter_app/Model/Thememodel.dart';
import 'package:flutter/material.dart';

class themeprovider extends ChangeNotifier {
  Thememodel theme = Thememodel(isdark: true);
  void changetheme() {
    theme.isdark = !theme.isdark;
    notifyListeners();
  }
}

import 'package:counter_app/Model/counter_model.dart';
import 'package:flutter/widgets.dart';

class counterprovide extends ChangeNotifier {
  countermodel count = countermodel(count: 0);
  void increment() {
    ++count.count;
    notifyListeners();
  }

  void Decrement() {
    --count.count;
    notifyListeners();
  }
}

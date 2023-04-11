import 'package:flutter/cupertino.dart';

final sliderDataProvider = SliderDataProvider();

class SliderDataProvider extends ChangeNotifier {
  double _sliderValue = 0.0;
  double get sliderValue => _sliderValue;
  set sliderValue(double value) {
    if (value != _sliderValue) {
      _sliderValue = value;
      notifyListeners();
    }
  }
}

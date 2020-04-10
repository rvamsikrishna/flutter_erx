import 'package:flutter/cupertino.dart';

class BreathCount extends ChangeNotifier {
  List<double> _breaths = [];
  int _totalBreaths = 0;
  double _prevZ;
  bool _accelerating = false;

  BreathCount();

  int get totalBreaths => _totalBreaths;

  bool get noBreaths => _breaths.isEmpty;

  void clearBreaths() {
    _breaths.clear();
    notifyListeners();
  }

  void addInhaleExhale(double value) {
    if (_breaths.length < 2) {
      _breaths.add(value);
      if (_breaths.length == 2) {
        _accelerating = _breaths[0] < _breaths[1];
        _prevZ = value;
      }
      return;
    }
    if (_accelerating) {
      if (value > _prevZ) {
        _breaths[_breaths.length - 1] = value;
      } else if (value < _prevZ) {
        _breaths.add(value);
        _accelerating = false;
      }
    } else {
      if (value < _prevZ) {
        _breaths[_breaths.length - 1] = value;
      } else if (value > _prevZ) {
        _breaths.add(value);
        _accelerating = true;
      }
    }
    _prevZ = value;

    _totalBreaths = (_breaths.length / 2).floor();
    notifyListeners();
  }
}

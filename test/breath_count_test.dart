import 'package:flutter_erx/state/breath_count.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final BreathCount breathCount = BreathCount();
  test('only exhales and inhales are considered', () {
    for (var item in _arr) {
      breathCount.addInhaleExhale(item);
    }
    expect(breathCount.totalBreaths, 3);
  });
}

final List<double> _arr = [
  0.3,
  0.4,
  0.5,
  0.6,
  0.7,
  0.8,
  0.9,
  1.0,
  1.1,
  1.2,
  1.3,
  1.2,
  1.1,
  1.0,
  0.9,
  0.8,
  0.7,
  0.6,
  0.5,
  0.4,
  0.3,
  0.2,
  0.1,
  0.0,
  0.1,
  0.2,
  0.3,
  0.4,
  0.5,
  0.6,
  0.7,
  0.8,
  0.9,
  1.0,
  1.1,
  1.0,
  0.9,
  0.8,
  0.7,
  0.6,
  0.5,
  0.4,
  0.3,
  0.2,
  0.1,
  0.0,
  0.1,
  0.2,
  0.3,
  0.4,
  0.5,
  0.6,
  0.7,
  0.8,
  1.0
];

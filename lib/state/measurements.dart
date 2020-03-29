import 'package:flutter/cupertino.dart';
import 'package:flutter_erx/models/input_type/input_type.dart';

import 'package:flutter_erx/models/measurement/measurement.dart';
import 'package:provider/provider.dart';

class Measurements extends ChangeNotifier {
  List<Measurement> items = [];

  Measurements() {
    items.addAll(_defaultMeasurements);
  }

  static Measurements of(BuildContext context) {
    return Provider.of<Measurements>(context, listen: false);
  }

  void addItem(Measurement measurement) {
    items.add(measurement);
    notifyListeners();
  }

  void modifyMeasurement(
      {Measurement oldMeasurement, Measurement newMeasurement}) {
    final int index = items.indexOf(oldMeasurement);
    items.replaceRange(index, index + 1, [newMeasurement]);
    notifyListeners();
  }
}

List<Measurement> _defaultMeasurements = [
  Measurement(
    title: 'Heart rate',
    description: 'Number of heart beats per minute',
    units: 'bpm',
    value: 76,
    inputType: MyInputType.number(),
  ),
  Measurement(
    title: 'Height',
    description: 'Height of the person in cms',
    units: 'cms',
    value: 175,
    inputType: MyInputType.number(),
  ),
  Measurement(
    title: 'Weight',
    description: 'Weight of the person in kgs',
    units: 'kg',
    value: 85,
    inputType: MyInputType.number(),
  ),
  Measurement(
    title: 'Breath count',
    description: '''
      Instructions: 

      1. Lie down flat on your back.
      2. Place the mobile with screen facing up on your abdomen.
      3. Tap the start button and breathe normally after beep sound.
      4. Once finished you'll hear a beep sound again.
      5. Tap the done button to rcord your breaths per minute.
    ''',
    units: 'bpm',
    value: null,
    inputType: MyInputType.breathCount(),
  ),
];

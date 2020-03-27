import 'package:flutter/cupertino.dart';

class NewInputState extends ChangeNotifier {
  final List<String> choices = [''];

  void addChoice(String choice) {
    choices.add(choice);
    notifyListeners();
  }

  void removeChoice(int index) {
    choices.removeAt(index);
    notifyListeners();
  }

  void clearChoices() {
    choices.clear();
    choices.add('');
  }
}

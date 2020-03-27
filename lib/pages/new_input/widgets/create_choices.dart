import 'package:flutter/material.dart';
import 'package:flutter_erx/state/new_input_state.dart';
import 'package:provider/provider.dart';

class CreateChoices extends StatefulWidget {
  const CreateChoices({Key key}) : super(key: key);
  @override
  _CreateChoicesState createState() => _CreateChoicesState();
}

class _CreateChoicesState extends State<CreateChoices> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NewInputState>(
      builder:
          (BuildContext context, NewInputState newInputState, Widget child) {
        return Container(
          child: Column(
            children: <Widget>[
              ...newInputState.choices.map(
                (choice) {
                  final int index =
                      newInputState.choices.indexWhere((c) => c == choice);

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Choice ${index + 1}'),
                            onChanged: (String v) {
                              newInputState.choices
                                  .replaceRange(index, index + 1, [v]);
                              // widget.onChoiceAdded(_choices);
                            },
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              if (index == newInputState.choices.length - 1)
                                FlatButton.icon(
                                  onPressed: () {
                                    if (newInputState.choices.last.isEmpty)
                                      return;
                                    setState(() {
                                      newInputState.choices.add('');
                                    });
                                  },
                                  icon: Icon(Icons.add),
                                  label: Text(''),
                                ),
                              if (index != 0)
                                FlatButton.icon(
                                  onPressed: () {
                                    setState(() {
                                      newInputState.choices.removeAt(index);
                                    });
                                  },
                                  icon: Icon(Icons.remove),
                                  label: Text(''),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

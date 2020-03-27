import 'package:flutter/material.dart';

class ChoiceSelect extends StatefulWidget {
  final List<String> values;
  final String selected;
  final Function(String) onChanged;

  const ChoiceSelect(
      {Key key, @required this.values, @required this.selected, this.onChanged})
      : super(key: key);

  @override
  _ChoiceSelectState createState() => _ChoiceSelectState();
}

class _ChoiceSelectState extends State<ChoiceSelect> {
  String _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          ...widget.values.map((v) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Radio(
                  value: v,
                  groupValue: _selected,
                  onChanged: (value) {
                    setState(() {
                      _selected = value;
                    });
                    widget.onChanged(value);
                  },
                ),
                Text(v),
              ],
            );
          }),
        ],
      ),
    );
  }
}

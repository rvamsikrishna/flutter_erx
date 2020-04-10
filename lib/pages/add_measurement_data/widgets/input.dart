import 'package:flutter/material.dart';
import 'package:flutter_erx/models/measurement/measurement.dart';
import 'package:flutter_erx/widgets/measurement_value.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MeasurementInput extends HookWidget {
  final Measurement measurement;
  final Function(String, bool) onChanged;
  final formKey;

  MeasurementInput({
    Key key,
    @required this.measurement,
    this.onChanged,
    @required this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _error = useState();

    final _textEditingController =
        useTextEditingController.fromValue(TextEditingValue(
      text: measurement.value == null ? '' : measurement.value.toString(),
    ));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        MeasurementValue(
          unitText: measurement.units,
          child: Form(
            key: formKey,
            child: TextFormField(
              onChanged: (value) {
                _error.value = null;
                onChanged(value, _error.value != null);
              },
              controller: _textEditingController,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                border: _buildInputBorder(),
                errorBorder:
                    _buildInputBorder(color: Theme.of(context).errorColor),
              ),
              keyboardType: measurement.inputType.maybeWhen(
                text: () => TextInputType.text,
                number: () => TextInputType.number,
                decimal: () => TextInputType.number,
                orElse: () => TextInputType.text,
              ),
              autovalidate: true,
              validator: (String v) {
                if (v.isEmpty) _error.value = 'Enter non-empty value!';
                _error.value = measurement.inputType.maybeWhen(
                  number: () =>
                      v.contains('.') ? 'Enter a non-decimal number.' : null,
                  orElse: () => null,
                );
                onChanged(v, _error.value != null);

                return null;
              },
            ),
          ),
        ),
        if (_error.value != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Text(
              _error.value,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Theme.of(context).errorColor,
              ),
            ),
          )
      ],
    );
  }

  _buildInputBorder({Color color}) {
    return OutlineInputBorder(
      borderSide: color == null ? BorderSide.none : BorderSide(color: color),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40.0),
        bottomLeft: Radius.circular(40.0),
      ),
    );
  }
}

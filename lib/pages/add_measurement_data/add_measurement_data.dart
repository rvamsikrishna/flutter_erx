import 'package:flutter/material.dart';
import 'package:flutter_erx/models/measurement/measurement.dart';
import 'package:flutter_erx/pages/add_measurement_data/widgets/choice_select.dart';
import 'package:flutter_erx/pages/add_measurement_data/widgets/input.dart';
import 'package:flutter_erx/state/measurements.dart';
import 'package:provider/provider.dart';

class AddMeasurementDataPage extends StatefulWidget {
  final Measurement measurement;

  const AddMeasurementDataPage({Key key, @required this.measurement})
      : super(key: key);

  @override
  _AddMeasurementDataPageState createState() => _AddMeasurementDataPageState();
}

class _AddMeasurementDataPageState extends State<AddMeasurementDataPage> {
  String _value;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.measurement.title),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        widget.measurement.description,
                      ),
                      SizedBox(height: 30.0),
                      widget.measurement.inputType.maybeWhen(
                        orElse: () => MeasurementInput(
                          measurement: widget.measurement,
                          onChanged: (String value, bool hasError) {
                            _value = hasError ? null : value;
                          },
                          formKey: _formKey,
                        ),
                        choice: (v) => ChoiceSelect(
                            values: v,
                            selected: widget.measurement.value,
                            onChanged: (String selected) {
                              _value = selected;
                            }),
                      ),
                      Spacer(),
                      RaisedButton(
                        child: Text('Done'),
                        textColor: Colors.white,
                        onPressed: () => _modify(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _modify(context) {
    if (_formKey.currentState != null && !_formKey.currentState.validate())
      return;
    if (_value == null) return;
    final Measurements measurements = Measurements.of(context);
    measurements.modifyMeasurement(
      oldMeasurement: widget.measurement,
      newMeasurement: widget.measurement
          .copyWith(value: _value ?? widget.measurement.value),
    );
    Navigator.pop(context);
  }
}

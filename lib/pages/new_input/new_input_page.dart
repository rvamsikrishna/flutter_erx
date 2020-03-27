import 'package:flutter/material.dart';
import 'package:flutter_erx/models/input_type/input_type.dart';
import 'package:flutter_erx/models/input_type_enum.dart';
import 'package:flutter_erx/models/measurement/measurement.dart';
import 'package:flutter_erx/pages/new_input/widgets/create_choices.dart';
import 'package:flutter_erx/pages/new_input/widgets/dropdown_form_feild.dart';
import 'package:flutter_erx/state/measurements.dart';
import 'package:flutter_erx/state/new_input_state.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

class NewInputPage extends HookWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final NewInputState _inputState = NewInputState();

  @override
  Widget build(BuildContext context) {
    final _titleController = useTextEditingController();
    final _unitsController = useTextEditingController();
    final _descController = useTextEditingController();
    final _inputType = useState(MyInputType.text());

    return Scaffold(
      appBar: AppBar(
        title: Text('Create new input'),
      ),
      body: LayoutBuilder(
        builder: (context, contstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: contstraints.maxHeight,
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextFormField(
                        controller: _titleController,
                        decoration: InputDecoration(
                          labelText: 'Title of measurement',
                        ),
                        validator: (String v) {
                          if (v.isEmpty) return 'Please enter a title.';
                          return null;
                        },
                      ),
                      SizedBox(height: 15.0),
                      TextFormField(
                        controller: _descController,
                        decoration: InputDecoration(
                          labelText: 'Description',
                        ),
                        maxLines: 3,
                      ),
                      SizedBox(height: 15.0),
                      TextFormField(
                        controller: _unitsController,
                        decoration: InputDecoration(
                          labelText: 'Units of measurement',
                        ),
                        validator: (String v) {
                          if (v.isEmpty) return 'Please enter a valid unit.';
                          return null;
                        },
                      ),
                      SizedBox(height: 15.0),
                      MyDropDownFormField(
                        titleText: 'Input type',
                        hintText: 'Please choose one',
                        value: _inputType.value,
                        filled: false,
                        onChanged: (MyInputType value) {
                          _inputState.clearChoices();
                          _inputType.value = value;
                        },
                        dataSource: [
                          ...NewInputType.values.map((type) {
                            return {
                              'display': type.toString().split('.')[1],
                              'value': _getInputType(type),
                            };
                          }),
                        ],
                        textField: 'display',
                        valueField: 'value',
                      ),
                      SizedBox(height: 15.0),
                      if (_inputType.value is MyInputTypeChoice)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: ChangeNotifierProvider.value(
                            value: _inputState,
                            child: CreateChoices(),
                          ),
                        ),
                      RaisedButton(
                        onPressed: () => _createInput(
                          context: context,
                          title: _titleController.text,
                          desc: _descController.text,
                          units: _unitsController.text,
                          inputType: _inputType.value,
                        ),
                        child: Text('Create'),
                      )
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

  MyInputType _getInputType(NewInputType type) {
    switch (type) {
      case NewInputType.Text:
        return MyInputType.text();
      case NewInputType.Number:
        return MyInputType.number();
      case NewInputType.Decimal:
        return MyInputType.decimal();
      case NewInputType.Choice:
        return MyInputType.choice([]);
      default:
        return MyInputType.text();
    }
  }

  void _createInput({
    BuildContext context,
    String title,
    String desc,
    String units,
    MyInputType inputType,
  }) {
    if (!_formKey.currentState.validate()) return;

    final Measurements measurements =
        Provider.of<Measurements>(context, listen: false);

    measurements.addItem(
      Measurement(
        title: title,
        description: desc,
        units: units,
        inputType: inputType.map(
          text: (v) => v,
          number: (v) => v,
          decimal: (v) => v,
          choice: (values) => values.copyWith(values: _inputState.choices),
        ),
      ),
    );
    Navigator.pop(context);
  }
}

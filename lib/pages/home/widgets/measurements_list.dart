import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_erx/models/measurement/measurement.dart';
import 'package:flutter_erx/router/router.gr.dart';
import 'package:flutter_erx/state/measurements.dart';
import 'package:provider/provider.dart';

class MeasurementsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Measurements>(
      builder: (BuildContext context, Measurements value, Widget child) {
        return ListView.separated(
          padding: EdgeInsets.only(top: 24.0),
          itemCount: value.items.length,
          itemBuilder: (BuildContext context, int index) {
            final Measurement measurement = value.items[index];
            final result = measurement.value;
            return ListTile(
              title: Text(measurement.title),
              trailing: result != null
                  ? Column(
                      children: <Widget>[
                        Text(
                          '$result',
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(measurement.units),
                      ],
                    )
                  : Text('Add'),
              onTap: () {
                measurement.inputType.maybeWhen(
                  breathCount: () {
                    ExtendedNavigator.of(context).pushNamed(
                      Routes.breathCountPage,
                      arguments:
                          BreathCountPageArguments(measurement: measurement),
                    );
                  },
                  orElse: () {
                    ExtendedNavigator.of(context).pushNamed(
                      Routes.addMeasurementDataPage,
                      arguments: AddMeasurementDataPageArguments(
                          measurement: measurement),
                    );
                  },
                );
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
        );
      },
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_erx/pages/home/home_page.dart';
import 'package:flutter_erx/pages/new_input/new_input_page.dart';
import 'package:flutter_erx/pages/add_measurement_data/add_measurement_data.dart';
import 'package:flutter_erx/models/measurement/measurement.dart';

abstract class Routes {
  static const home = '/';
  static const newInputPage = '/new-input-page';
  static const addMeasurementDataPage = '/add-measurement-data-page';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomePage(),
          settings: settings,
        );
      case Routes.newInputPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => NewInputPage(),
          settings: settings,
        );
      case Routes.addMeasurementDataPage:
        if (hasInvalidArgs<AddMeasurementDataPageArguments>(args,
            isRequired: true)) {
          return misTypedArgsRoute<AddMeasurementDataPageArguments>(args);
        }
        final typedArgs = args as AddMeasurementDataPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => AddMeasurementDataPage(
              key: typedArgs.key, measurement: typedArgs.measurement),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//AddMeasurementDataPage arguments holder class
class AddMeasurementDataPageArguments {
  final Key key;
  final Measurement measurement;
  AddMeasurementDataPageArguments({this.key, @required this.measurement});
}

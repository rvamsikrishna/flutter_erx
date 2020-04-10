import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_erx/pages/add_measurement_data/add_measurement_data.dart';
import 'package:flutter_erx/pages/breath_count/breath_count_page.dart';
import 'package:flutter_erx/pages/home/home_page.dart';
import 'package:flutter_erx/pages/new_input/new_input_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomePage home;
  NewInputPage newInputPage;
  AddMeasurementDataPage addMeasurementDataPage;
  BreathCountPage breathCountPage;
}

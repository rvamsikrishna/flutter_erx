import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_erx/router/router.gr.dart';
import 'package:flutter_erx/state/measurements.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Measurements>(
          create: (_) => Measurements(),
        ),
      ],
      child: MaterialApp(
        builder: ExtendedNavigator<Router>(router: Router()),
        theme: ThemeData(
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.redAccent),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

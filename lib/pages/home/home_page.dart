import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_erx/pages/home/widgets/measurements_list.dart';
import 'package:flutter_erx/router/router.gr.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ElectronRx'),
      ),
      bottomNavigationBar: _buildBottomAppBar(),
      floatingActionButton: _buildFloatingActionButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: MeasurementsList(),
    );
  }

  FloatingActionButton _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        ExtendedNavigator.of(context).pushNamed(Routes.newInputPage);
      },
    );
  }

  BottomAppBar _buildBottomAppBar() {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: IconTheme(
          data: IconThemeData(
            color: Colors.white,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.insert_chart),
                onPressed: () {},
              ),
              SizedBox(width: 56.0),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      shape: CircularNotchedRectangle(),
      color: Colors.blueGrey,
    );
  }
}

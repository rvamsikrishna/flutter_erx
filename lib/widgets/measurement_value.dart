import 'package:flutter/material.dart';

class MeasurementValue extends StatelessWidget {
  const MeasurementValue({
    Key key,
    @required this.child,
    this.unitText,
  })  : assert(child != null),
        super(key: key);

  final Widget child;
  final String unitText;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40.0),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 3.0,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
            )),
        child: Row(
          children: <Widget>[
            Expanded(
              child: child,
            ),
            Container(
              width: 100.0,
              color: Colors.grey,
              alignment: Alignment.center,
              child: Text(
                unitText ?? 'units',
                overflow: TextOverflow.clip,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_erx/models/measurement/measurement.dart';
import 'package:flutter_erx/pages/breath_count/widgets/start_button.dart';
import 'package:flutter_erx/state/breath_count.dart';
import 'package:flutter_erx/state/measurements.dart';
import 'package:flutter_erx/widgets/measurement_value.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sensors/sensors.dart';

class BreathCountPage extends StatefulWidget {
  final Measurement measurement;
  const BreathCountPage({
    Key key,
    this.measurement,
  }) : super(key: key);

  @override
  _BreathCountPageState createState() => _BreathCountPageState();
}

class _BreathCountPageState extends State<BreathCountPage> {
  StreamSubscription<AccelerometerEvent> _accelerationSub;
  Timer _breathsTimer;
  AudioPlayer _audioPlayer;
  final int _timerDurationInSecs = 60;
  BreathCount _breathCount;

  @override
  void initState() {
    super.initState();
    _breathCount = BreathCount();

    _audioPlayer = AudioPlayer();
    _audioPlayer.setAsset('assets/sounds/notify.mp3');
    _audioPlayer.setSpeed(2.0);
  }

  @override
  void dispose() {
    _accelerationSub?.cancel();
    _breathsTimer?.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.measurement.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text(widget.measurement.description),
            SizedBox(height: 15.0),
            Text('Prevoiusly added breaths per minute:'),
            SizedBox(height: 15.0),
            MeasurementValue(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  '${widget.measurement.value ?? 0}',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ),
              unitText: widget.measurement.units,
            ),
            SizedBox(height: 35.0),
            StartButton(
              size: 150.0,
              duration: _timerDurationInSecs,
              onPressed: _startBreathCount,
              child: DefaultTextStyle(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                ),
                child: AnimatedBuilder(
                    animation: _breathCount,
                    builder: (context, child) {
                      final int totalBreaths = _breathCount.totalBreaths;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            totalBreaths == 0 ? 'Start' : '$totalBreaths',
                          ),
                          if (_breathsTimer == null && totalBreaths != 0)
                            Text('Restart'),
                        ],
                      );
                    }),
              ),
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
    );
  }

  void _startBreathCount() {
    if (_breathsTimer != null && _breathsTimer.isActive) {
      _breathCount.clearBreaths();
      _stopBreathCounts();
    } else {
      if (_breathCount.noBreaths) {
        _breathCount.clearBreaths();
      }

      _accelerationSub = accelerometerEvents.listen(_onEvent);
      _breathsTimer = Timer(Duration(seconds: _timerDurationInSecs), () {
        _stopBreathCounts();
        _playSound();
      });

      _playSound();
    }
  }

  Future<void> _playSound() async {
    await _audioPlayer.play();
    _audioPlayer.stop();
  }

  void _stopBreathCounts() {
    _accelerationSub.cancel();
    _accelerationSub = null;
    _breathsTimer.cancel();
    _breathsTimer = null;
    setState(() {});
  }

  _modify(BuildContext context) {
    final Measurements measurements = Measurements.of(context);
    measurements.modifyMeasurement(
      oldMeasurement: widget.measurement,
      newMeasurement: widget.measurement.copyWith(
          value: _breathCount.totalBreaths ?? widget.measurement.value),
    );
    Navigator.pop(context);
  }

  void _onEvent(AccelerometerEvent event) {
    _breathCount.addInhaleExhale(event.z);
  }
}

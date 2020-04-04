import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_erx/models/breath_type/breath_type.dart';
import 'package:flutter_erx/models/measurement/measurement.dart';
import 'package:flutter_erx/pages/breath_count/widgets/start_button.dart';
import 'package:flutter_erx/state/measurements.dart';
import 'package:flutter_erx/widgets/measurement_value.dart';
import 'package:just_audio/just_audio.dart';
import 'package:noise_meter/noise_meter.dart';

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
  StreamSubscription<NoiseReading> _noiseSubscription;
  NoiseMeter _noiseMeter;
  List<double> _breaths = [];
  Timer _breathsTimer;
  AudioPlayer _audioPlayer;
  int _totalBreaths = 0;
  final int _timerDurationInSecs = 60;
  double _prevNoise;
  bool _noiseDbIncreasing = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.setAsset('assets/sounds/notify.mp3');
    _audioPlayer.setSpeed(2.0);
  }

  void _onEvent(NoiseReading noiseReading) {
    final double decibels = noiseReading.db;
    if (_breaths.length < 2) {
      _breaths.add(decibels);
      if (_breaths.length == 2) {
        _noiseDbIncreasing = _breaths[0] < _breaths[1];
        _prevNoise = decibels;
      }
      return;
    }
    if (_noiseDbIncreasing) {
      if (decibels > _prevNoise) {
        _breaths[_breaths.length - 1] = decibels;
      } else if (decibels < _prevNoise) {
        _breaths.add(decibels);
        _noiseDbIncreasing = false;
      }
    } else {
      if (decibels < _prevNoise) {
        _breaths[_breaths.length - 1] = decibels;
      } else if (decibels > _prevNoise) {
        _breaths.add(decibels);
        _noiseDbIncreasing = true;
      }
    }
    _prevNoise = decibels;

    setState(() {
      _totalBreaths = (_breaths.length / 2).floor();
    });
  }

  @override
  void dispose() {
    _noiseSubscription?.cancel();
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      _totalBreaths == 0 ? 'Start' : '$_totalBreaths',
                    ),
                    if (_breathsTimer == null && _totalBreaths != 0)
                      Text('Restart'),
                  ],
                ),
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
      _breaths.clear();
      _stopBreathCounts();
    } else {
      if (_breaths.isNotEmpty) {
        _breaths.clear();
      }

      _noiseMeter = NoiseMeter();
      _noiseSubscription = _noiseMeter.noiseStream.listen(_onEvent);
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
    _noiseMeter = null;
    _noiseSubscription.cancel();
    _noiseSubscription = null;
    _breathsTimer.cancel();
    _breathsTimer = null;
    setState(() {});
  }

  _modify(BuildContext context) {
    final Measurements measurements = Measurements.of(context);
    measurements.modifyMeasurement(
      oldMeasurement: widget.measurement,
      newMeasurement: widget.measurement
          .copyWith(value: _totalBreaths ?? widget.measurement.value),
    );
    Navigator.pop(context);
  }
}

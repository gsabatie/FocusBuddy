// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:quiver/async.dart';

enum FocusSessionStatus { running, stopped, finished }

class FocusSessionManager {
  CountdownTimer? _countDownTimer;

  StreamController<FocusSessionStatus> statusController;
  StreamController<Duration> tickController;

  @visibleForTesting
  FocusSessionManager()
      : statusController = StreamController<FocusSessionStatus>.broadcast(),
        tickController = StreamController<Duration>.broadcast();

  void _resetController() {
    // _countDownTimer?.cancel();
    statusController.close();
    tickController.close();
    statusController = StreamController<FocusSessionStatus>.broadcast();
    tickController = StreamController<Duration>.broadcast();
  }

  void start(Duration duration) {
    if (duration.inSeconds == 0) {
      statusController.sink.add(FocusSessionStatus.finished);
      _resetController();
    } else {
      statusController.add(FocusSessionStatus.running);
      _countDownTimer = CountdownTimer(
        duration,
        const Duration(seconds: 1),
      );
      _countDownTimer?.listen((countDown) {
        tickController.add(countDown.remaining);
      });
      _countDownTimer?.listen((countDown) {
        if (countDown.remaining.inSeconds == 0) {
          statusController.add(FocusSessionStatus.finished);
          _resetController();
        }
      });
    }
  }

  void stop() {
    statusController.add(FocusSessionStatus.stopped);
    _countDownTimer?.cancel();
    _resetController();
  }
}

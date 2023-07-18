import 'package:flutter_test/flutter_test.dart';
import 'package:focus_boddy/src/useCases/focus_session.dart';

void main() {
  group('FocusSessionManager', () {
    late FocusSessionManager focusSession;
    setUp(() => {focusSession = FocusSessionManager()});

    group('start', () {
      group('when duration is 0', () {
        test('should send a stopped status immediately', () {
          // ignore: unused_local_variable
          expectLater(focusSession.statusController.stream.toList(),
              completion([FocusSessionStatus.finished]));

          focusSession.start(const Duration(seconds: 0));
        });
      });

      group('when duration is 2 seconds', () {
        test('should send a stopped after a running', () async {
          // ignore: unused_local_variable
          focusSession.statusController.stream.listen((event) {});
          expectLater(
              focusSession.statusController.stream.toList(),
              completion(
                  [FocusSessionStatus.running, FocusSessionStatus.finished]));

          focusSession.start(const Duration(seconds: 2));
        });
      });
    });

    group('stop', () {
      group('when session is running', () {
        test('should stop immediately', () {
          // ignore: unused_local_variable
          focusSession.statusController.stream.listen((event) {});
          expectLater(
              focusSession.statusController.stream.toList(),
              completion(
                  [FocusSessionStatus.running, FocusSessionStatus.stopped]));

          focusSession.start(const Duration(seconds: 4));
          focusSession.stop();
        });
        test("should tick every second", () {
          // ignore: unused_local_variable
          focusSession.tickController.stream.listen((event) {});
          expectLater(
              focusSession.tickController.stream
                  .map((event) => event.inSeconds)
                  .toList(),
              completion([
                2,
                1,
                0,
              ]));

          focusSession.start(const Duration(seconds: 4));
        });
      });

      group('when session is not running', () {
        test('should stop immediately', () {
          // ignore: unused_local_variable
          focusSession.statusController.stream.listen((event) {});
          expectLater(focusSession.statusController.stream.toList(),
              completion([FocusSessionStatus.stopped]));

          focusSession.stop();
        });
      });
    });
  });
}

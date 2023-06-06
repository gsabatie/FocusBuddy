import 'package:flutter_test/flutter_test.dart';
import 'package:focus_boddy/src/widget/control_button.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  group('ControlButton Golden test', () {
    testGoldens('Weather Card - Accessibility', (tester) async {
      final builder = GoldenBuilder.column()
        ..addScenario('+', const ControlButton(text: '+'))
        ..addScenario('-', const ControlButton(text: '-'));
      await tester.pumpWidgetBuilder(builder.build());
      await screenMatchesGolden(tester, 'ControlButton');
    });
  });
}

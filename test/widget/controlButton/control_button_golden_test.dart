import 'package:alchemist/alchemist.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:focus_boddy/src/widget/control_button.dart';

void main() {
  group('ControlButton Golden test', () {
    goldenTest(
      'default rendering',
      fileName: 'control_button',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
              name: "+ text", child: const ControlButton(text: '+')),
          GoldenTestScenario(
              name: "- text", child: const ControlButton(text: '-'))
        ],
      ),
    );
  });
}

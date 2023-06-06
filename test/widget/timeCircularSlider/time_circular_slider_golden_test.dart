import 'package:alchemist/alchemist.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:focus_boddy/src/widget/time_circular_slider.dart';

void main() {
  group('TimeCircularSlider Golden test', () {
    goldenTest(
      'default rendering',
      fileName: 'time_circular_slider',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(name: "default", child: const TimeCircularSlider())
        ],
      ),
    );
  });
}

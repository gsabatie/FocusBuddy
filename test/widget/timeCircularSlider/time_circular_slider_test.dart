import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:focus_boddy/src/widget/time_circular_slider.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

void main() {
  group('timeCircularSlider', () {
    const timeCircularSlider = MaterialApp(
        home: Scaffold(
      body: RepaintBoundary(
        child: TimeCircularSlider(),
      ),
    ));

    testWidgets('render properly', (WidgetTester tester) async {
      await tester.pumpWidget(timeCircularSlider);

      await expectLater(find.byType(SleekCircularSlider),
          matchesGoldenFile("timeCircularSlider.png"));
    });
  });
}

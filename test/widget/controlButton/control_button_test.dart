import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:focus_boddy/src/widget/control_button.dart';

void main() {
  group('ControlButton', () {
    const controlButtonWidget = MaterialApp(
      home: Scaffold(
        body: RepaintBoundary(child: ControlButton(text: '+')),
      ),
    );

    testWidgets('should display + text', (WidgetTester tester) async {
      await tester.pumpWidget(controlButtonWidget);

      expect(find.text('+'), findsOneWidget);
    });
  });
}

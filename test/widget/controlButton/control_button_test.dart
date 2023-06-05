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

    testWidgets('render properly', (WidgetTester tester) async {
      await tester.pumpWidget(controlButtonWidget);

      await expectLater(
          find.byType(ElevatedButton), matchesGoldenFile("ControlButton.png"));
    });

    testWidgets('display + button', (WidgetTester tester) async {
      await tester.pumpWidget(controlButtonWidget);

      // Verify myWidget shows some text
      expect(find.text('+'), findsOneWidget);
    });
  });
}

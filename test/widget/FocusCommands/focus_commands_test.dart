import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:focus_boddy/src/widget/focus_command.dart';

void main() {
  group('FocusCommands', () {
    const focusCommandsWidget = MaterialApp(
      home: Scaffold(
        body: RepaintBoundary(
            child: FocusCommands(
          expectedFinishedTime: '12:15',
          remainingTime: '15:45',
        )),
      ),
    );

    testWidgets('display + button', (WidgetTester tester) async {
      await tester.pumpWidget(focusCommandsWidget);

      expect(find.text('+'), findsOneWidget);
    });

    testWidgets('display 15:45 remaining time', (WidgetTester tester) async {
      await tester.pumpWidget(focusCommandsWidget);

      expect(find.text('15:45'), findsOneWidget);
    });

    testWidgets('display 12:15 expected finish time',
        (WidgetTester tester) async {
      await tester.pumpWidget(focusCommandsWidget);

      expect(find.text('12:15'), findsOneWidget);
    });
  });
}

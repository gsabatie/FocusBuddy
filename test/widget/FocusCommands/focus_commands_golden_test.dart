import 'package:alchemist/alchemist.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:focus_boddy/src/widget/focus_command.dart';

void main() {
  group('FocusCommands Golden test', () {
    goldenTest(
      'default rendering',
      fileName: 'focus_commands',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
              name: "expectedFinishedTime 12:15 and remainingTime 15:45",
              child: const FocusCommands(
                expectedFinishedTime: '12:15',
                remainingTime: '15:45',
              )),
        ],
      ),
    );
  });
}

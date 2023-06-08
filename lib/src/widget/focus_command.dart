import 'package:flutter/material.dart';
import 'package:focus_boddy/src/widget/control_button.dart';

class FocusCommands extends StatefulWidget {
  final String expectedFinishedTime;
  final String remainingTime;

  const FocusCommands(
      {Key? key, this.expectedFinishedTime = '', this.remainingTime = ''})
      : super(key: key);

  @override
  State<FocusCommands> createState() => _FocusCommandsState();
}

class _FocusCommandsState extends State<FocusCommands> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            style: const TextStyle(fontSize: 14, color: Colors.white),
            widget.expectedFinishedTime),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ControlButton(text: '-'),
            const SizedBox(width: 16),
            Text(
                style: const TextStyle(fontSize: 56, color: Colors.white),
                widget.remainingTime),
            const SizedBox(width: 16),
            const ControlButton(text: '+'),
          ],
        ),
      ],
    );
  }
}

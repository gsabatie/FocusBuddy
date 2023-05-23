import 'package:flutter/material.dart';
import 'package:focus_boddy/src/widget/control_button.dart';

class FocusCommands extends StatefulWidget {
  const FocusCommands({Key? key}) : super(key: key);

  @override
  State<FocusCommands> createState() => _FocusCommandsState();
}

class _FocusCommandsState extends State<FocusCommands> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(style: TextStyle(fontSize: 14, color: Colors.white), '11:35'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ControlButton(text: '-'),
            SizedBox(width: 16),
            Text(style: TextStyle(fontSize: 56, color: Colors.white), '30:00'),
            SizedBox(width: 16),
            ControlButton(text: '+'),
          ],
        ),
      ],
    );
  }
}

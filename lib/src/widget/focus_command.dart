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
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ControlButton(text: '-'),
        Column(
          children: [
            Text('25:00'),
            Text(
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                'Genial'),
          ],
        ),
        ControlButton(text: '+'),
      ],
    );
  }
}

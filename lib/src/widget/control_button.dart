import 'package:flutter/material.dart';

class ControlButton extends StatelessWidget {
  const ControlButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(5),
          backgroundColor: Colors.white, // <-- Button color
          foregroundColor: Colors.black, // <-- Splash color
        ),
        onPressed: () {},
        child: Text(text,
            style: const TextStyle(fontSize: 17, color: Colors.blueAccent)));
  }
}

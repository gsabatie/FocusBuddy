import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focus_boddy/src/widget/time_circular_slider.dart';

import '../bloc/focus_timer_bloc.dart';

import '../widget/focus_command.dart';

class FocusTimerPage extends StatefulWidget {
  const FocusTimerPage({Key? key}) : super(key: key);

  @override
  State<FocusTimerPage> createState() => _FocusTimerPageState();
}

class _FocusTimerPageState extends State<FocusTimerPage> {
  bool outlinedSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: BlocProvider(
        create: (context) => FocusTimerBloc(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TimeCircularSlider(),
            const FocusCommands(),
            const SizedBox(height: 16),
            IconButton.outlined(
              color: Colors.white,
              splashColor: Colors.white,
              iconSize: 48,
              isSelected: false,
              icon: const Icon(Icons.play_arrow),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 3.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

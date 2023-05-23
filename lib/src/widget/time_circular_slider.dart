import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class TimeCircularSlider extends StatefulWidget {
  const TimeCircularSlider({Key? key}) : super(key: key);

  @override
  State<TimeCircularSlider> createState() => _TimeCircularSliderState();
}

class _TimeCircularSliderState extends State<TimeCircularSlider> {
  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
        min: 0,
        max: 1000,
        initialValue: 426,
        appearance: CircularSliderAppearance(
            size: 300,
            startAngle: -90,
            angleRange: 360,
            customColors: CustomSliderColors(
              trackColor: Colors.white.withAlpha(50),
              progressBarColor: Colors.white,
              dotColor: Colors.white,
            ),
            customWidths: CustomSliderWidths(
              trackWidth: 1,
              progressBarWidth: 10,
              handlerSize: 20,
            )),
        innerWidget: (percentage) => Container(),
        onChange: (double value) {
          // callback providing a value while its being changed (with a pan gesture)
        },
        onChangeStart: (double startValue) {
          // callback providing a starting value (when a pan gesture starts)
        },
        onChangeEnd: (double endValue) {
          // ucallback providing an ending value (when a pan gesture ends)
        });
  }
}

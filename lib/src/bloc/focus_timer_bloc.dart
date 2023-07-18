import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'focus_timer_event.dart';
part 'focus_timer_state.dart';

class FocusTimerBloc extends Bloc<FocusTimerEvent, FocusTimerState> {
  FocusTimerBloc() : super(FocusTimerInitial()) {
    on<FocusTimerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

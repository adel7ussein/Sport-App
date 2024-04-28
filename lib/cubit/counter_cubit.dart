import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterOneIncrementState());
  int playerOnePoint = 0;
  int playerTowPoint = 0;
  bool shouldShowRightWidget = false;
  bool shouldShowLeftWidget = false;

  void pointsIncrement(
      {required int buttonNumber, required String playerName}) {
    if (playerName == 'one') {
      playerOnePoint += buttonNumber;
      emit(CounterOneIncrementState());
    } else {
      playerTowPoint += buttonNumber;
      emit(CounterTwoIncrementState());
    }
  }

  void pointsDecrement(
      {required int buttonNumber, required String playerName}) {
    if (playerName == 'one' && playerOnePoint > 0) {
      playerOnePoint -= buttonNumber;
      emit(CounterOneIncrementState());
    } else if (playerName == 'two' && playerTowPoint > 0) {
      playerTowPoint -= buttonNumber;
      emit(CounterTwoIncrementState());
    }
  }

  void playersReset() {
    playerOnePoint = 0;
    playerTowPoint = 0;
    emit(CounterReset());
  }

  void showWCard({required String side}) {
    if (side == 'right') {
      shouldShowRightWidget =! shouldShowRightWidget;
      emit(RightSideState());
    } else if (side == 'left') {
      shouldShowLeftWidget =! shouldShowLeftWidget;
      emit(LeftSideState());
    }
  }
}

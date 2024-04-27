import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int playerOnePoint = 0;
  int playerTowPoint = 0;
  void playerIncrement({required int buttonNumber, required String playerName}) {
    if (playerName == 'one') {
      playerOnePoint += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      playerTowPoint += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void playerDecrement({required int buttonNumber, required String playerName}) {
    if (playerName == 'one') {
      playerOnePoint -= buttonNumber;
      emit(CounterAIncrementState());
    } else {
      playerTowPoint -= buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void teamsReset() {
    playerTowPoint = 0;
    playerTowPoint = 0;
    emit(CounterReset());
  }
}

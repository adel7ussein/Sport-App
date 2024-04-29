import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterIncrementState());
  int playerOnePoint = 0;
  int playerTowPoint = 0;
  bool shouldShowRightCard = false;
  bool shouldShowLeftCard = true;

  int gameOne = 0;
  int gameTwo = 0;

  int matchOne = 00;
  int matchTwo = 00;

  void counterIncrement(
      {required int buttonNumber, required String playerName}) {
    if (playerName == 'one') {
      playerOnePoint += buttonNumber;
      emit(CounterIncrementState());
    }
    else if (playerName == 'two'){
      playerTowPoint += buttonNumber;
      emit(CounterIncrementState());
    }
    else if (playerName == 'match one') {
      matchOne += buttonNumber;
      emit(CounterIncrementState());
    }
    else if (playerName == 'match two') {
      matchTwo += buttonNumber;
      emit(CounterIncrementState());
    }

  }

  void counterDecrement(
      {required int buttonNumber, required String playerName}) {
    if (playerName == 'one' && playerOnePoint > 0) {
      playerOnePoint -= buttonNumber;
      emit(CounterDecrementState());
    } else if (playerName == 'two' && playerTowPoint > 0) {
      playerTowPoint -= buttonNumber;
      emit(CounterDecrementState());
    }
    else if (playerName == 'match one' && matchOne > 0) {
      matchOne -= buttonNumber;
      emit(CounterDecrementState());
    }
    else if (playerName == 'match two' && matchTwo > 0) {
      matchTwo -= buttonNumber;
      emit(CounterDecrementState());
    }
  }

  void playersReset() {
    playerOnePoint = 0;
    playerTowPoint = 0;
    emit(CounterReset());
  }

  void showTennisRacket() {
    shouldShowLeftCard = !shouldShowLeftCard;
    shouldShowRightCard = !shouldShowRightCard;
    emit(TennisRacketState());
  }

  void gameIncrement({required int buttonNumber, required String playerName}) {
    if (playerName == 'one' && gameOne < 3) {
      gameOne += buttonNumber;
      emit(GameIncrementState());
    } else if (playerName == 'two' && gameTwo < 3) {
      gameTwo += buttonNumber;
      emit(GameIncrementState());
    }
  }

  void gameDecrement({required int buttonNumber, required String playerName}) {
    if (playerName == 'one' && gameOne > 0) {
      gameOne -= buttonNumber;
      emit(GameDecrementState());
    } else if (playerName == 'two' && gameTwo > 0) {
      gameTwo -= buttonNumber;
      emit(GameDecrementState());
    }
  }
}

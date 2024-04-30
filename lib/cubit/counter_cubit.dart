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

  bool showYellowCardOne = false;
  bool showYellowCardTwo = false;

  bool yr1One = false;
  bool yr2One = false;
  bool yr1Two = false;
  bool yr2Two = false;

  bool timeOutCard1 = false ;
  bool timeOutCard2 = false ;

  void counterIncrement(
      {required int buttonNumber, required String playerName}) {
    if (playerName == 'one') {
      playerOnePoint += buttonNumber;
      emit(CounterIncrementState());
    } else if (playerName == 'two') {
      playerTowPoint += buttonNumber;
      emit(CounterIncrementState());
    } else if (playerName == 'match one') {
      matchOne += buttonNumber;
      emit(CounterIncrementState());
    } else if (playerName == 'match two') {
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
    } else if (playerName == 'match one' && matchOne > 0) {
      matchOne -= buttonNumber;
      emit(CounterDecrementState());
    } else if (playerName == 'match two' && matchTwo > 0) {
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

  void showYR({required String nameCard}) {
    if (nameCard == 'yr1one') {
      yr1One = !yr1One;
      emit(ShowYRCardState());
    } else if (nameCard == 'yr1two') {
      yr1Two = !yr1Two;
      emit(ShowYRCardState());
    } else if (nameCard == 'yr2one') {
      yr2One = !yr2One;
      emit(ShowYRCardState());
    } else if (nameCard == 'yr2two') {
      yr2Two = !yr2Two;
      emit(ShowYRCardState());
    }
  }

  void showYellowCard({required String nameCard}) {
    if (nameCard == 'one') {
      showYellowCardOne = !showYellowCardOne;
      emit(ShowYellowCardState());
    } else if (nameCard == 'two') {
      showYellowCardTwo = !showYellowCardTwo;
      emit(ShowYellowCardState());
    }
  }

  void showTimeOutCard({required String nameCard}) {
    if (nameCard == 'one') {
      timeOutCard1 = !timeOutCard1;
      emit(ShowTimeOutCardState());
    } else if (nameCard == 'two') {
      timeOutCard2 = !timeOutCard2;
      emit(ShowTimeOutCardState());
    }
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/cubit/counter_cubit.dart';
import 'package:sport_app/cubit/counter_state.dart';
import 'package:sport_app/widgets/custom_clock.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_button_with_border.dart';
import '../widgets/custom_container_content.dart';
import '../widgets/custom_counters.dart';
import '../widgets/custom_flag.dart';
import '../widgets/custom_text_name.dart';
import '../widgets/tennis_racket.dart';
import '../widgets/tennis_racket_button.dart';
import '../widgets/time_out_card.dart';
import '../widgets/yellow_card.dart';
import '../widgets/yellow_red_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text(
              "homepage",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextName(
                      textName: 'LEE Jong-san',
                      fontSize: 20,
                    ),
                    CustomTextName(
                      textName: 'Mohamed Alhamad',
                      fontSize: 20,
                    )
                  ],
                ),
                // Small and big Counters on the top of screen
                Container(
                  margin: const EdgeInsets.only(top: 3),
                  height: 130,
                  child: Row(
                    children: [
                      CustomBigCounter(
                        titleContainer:
                            '${BlocProvider.of<CounterCubit>(context).playerOnePoint}',
                      ),
                      Column(
                        children: [
                          CustomSmallCounter(
                            titleContainer:
                                '${BlocProvider.of<CounterCubit>(context).gameOne}',
                          ),
                          TimeOutCard(
                            visibleValue: BlocProvider.of<CounterCubit>(context)
                                .timeOutCard1,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CustomSmallCounter(
                            titleContainer:
                                '${BlocProvider.of<CounterCubit>(context).gameTwo}',
                          ),
                          TimeOutCard(
                            visibleValue: BlocProvider.of<CounterCubit>(context)
                                .timeOutCard2,
                          )
                        ],
                      ),
                      CustomBigCounter(
                          titleContainer:
                              '${BlocProvider.of<CounterCubit>(context).playerTowPoint}')
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(bottom: 10, left: 41, right: 41),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Show left tennis racket
                      CustomTennisRacket(
                        visibleValue: BlocProvider.of<CounterCubit>(context)
                            .shouldShowLeftCard,
                      ),
                      // Show right tennis racket
                      CustomTennisRacket(
                        visibleValue: BlocProvider.of<CounterCubit>(context)
                            .shouldShowRightCard,
                      ),
                    ],
                  ),
                ),
                // Two Flags and the Names of countries
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            YellowCard(
                              visibleValue:
                                  BlocProvider.of<CounterCubit>(context)
                                      .showYellowCardOne,
                            ),
                            YellowRedCard(
                              visibleValue:
                                  BlocProvider.of<CounterCubit>(context).yr1One,
                            ),
                            YellowRedCard(
                              visibleValue:
                                  BlocProvider.of<CounterCubit>(context).yr2One,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomFlag(
                              imagePath: 'assets/images/south-korean.jpg',
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextName(
                              textName: 'South Korea',
                              fontSize: 17,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            CustomFlag(
                              imagePath: 'assets/images/saudi-arabia.png',
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextName(
                              textName: 'Saudi Arabia',
                              fontSize: 17,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            YellowCard(
                              visibleValue:
                                  BlocProvider.of<CounterCubit>(context)
                                      .showYellowCardTwo,
                            ),
                            YellowRedCard(
                              visibleValue:
                                  BlocProvider.of<CounterCubit>(context).yr1Two,
                            ),
                            YellowRedCard(
                              visibleValue:
                                  BlocProvider.of<CounterCubit>(context).yr2Two,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white, // Change the color of the border
                      width: 1.5, // Change the width of the border
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainerContent(
                        textName:
                            '${BlocProvider.of<CounterCubit>(context).matchOne}',
                        fontSize: 40,
                        textColor: Colors.white,
                        textDecoration: TextDecoration.underline,
                      ),
                      CustomContainerContent(
                        textName:
                            '${BlocProvider.of<CounterCubit>(context).matchTwo}',
                        fontSize: 40,
                        textColor: Colors.white,
                        textDecoration: TextDecoration.underline,
                      )
                    ],
                  ),
                ),
                // Container that contain all buttons for two player
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 245,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.white, // Change the color of the border
                      width: .8, // Change the width of the border
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 20,
                                  width: 140,
                                  color: Colors.lightGreenAccent[100],
                                  child: Center(
                                    child: CustomTextName(
                                      textName: 'LEE jong-san',
                                      fontSize: 12,
                                      fontColor: Colors.black87,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    CustomButton(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .gameDecrement(
                                                buttonNumber: 1,
                                                playerName: 'one');
                                      },
                                      heightOfButton: 20,
                                      widthOfButton: 30,
                                      textName: '-',
                                      fontColor: Colors.black87,
                                      backGroundFontColor:
                                          Colors.lightGreenAccent[100],
                                    ),
                                    CustomTextName(
                                      textName: 'GAME',
                                      fontSize: 12,
                                      fontColor: Colors.red,
                                    ),
                                    CustomButton(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .gameIncrement(
                                                buttonNumber: 1,
                                                playerName: 'one');
                                      },
                                      heightOfButton: 20,
                                      widthOfButton: 30,
                                      textName: '+',
                                      fontColor: Colors.black87,
                                      backGroundFontColor:
                                          Colors.lightGreenAccent[100],
                                    ),
                                    // left W-Card Button
                                    CustomButton(
                                        onTap: () {
                                          BlocProvider.of<CounterCubit>(context)
                                              .showTimeOutCard(nameCard: 'one');
                                        },
                                        backGroundFontColor: Colors.green,
                                        fontColor: Colors.white,
                                        textName: 'W Card',
                                        heightOfButton: 20,
                                        widthOfButton: 50),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomButton(
                                        backGroundFontColor: Colors.green,
                                        fontColor: Colors.black45,
                                        textName: 'TO',
                                        heightOfButton: 20,
                                        widthOfButton: 30),
                                    CustomOclock(),
                                    CustomButton(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .counterDecrement(
                                                buttonNumber: 1,
                                                playerName: 'one');
                                      },
                                      heightOfButton: 20,
                                      widthOfButton: 30,
                                      textName: '-',
                                      fontColor: Colors.black87,
                                      backGroundFontColor: Colors.white,
                                    ),
                                    CustomTextName(
                                      textName: 'Points',
                                      fontSize: 12,
                                      fontColor: Colors.green,
                                    ),
                                    CustomButton(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .counterIncrement(
                                                buttonNumber: 1,
                                                playerName: 'one');
                                      },
                                      heightOfButton: 20,
                                      widthOfButton: 30,
                                      textName: '+',
                                      fontColor: Colors.black87,
                                      backGroundFontColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomButtonWithBorder(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .showYR(nameCard: 'yr1one');
                                      },
                                      backGroundFontColor: Colors.red,
                                      fontColor: Colors.white,
                                      textName: 'Y R 1',
                                      heightOfButton: 20,
                                      widthOfButton: 40,
                                      borderColor: Colors.white,
                                    ),
                                    CustomButtonWithBorder(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .showYR(nameCard: 'yr2one');
                                      },
                                      backGroundFontColor: Colors.red,
                                      fontColor: Colors.white,
                                      textName: 'Y R 2',
                                      heightOfButton: 20,
                                      widthOfButton: 40,
                                      borderColor: Colors.white,
                                    ),
                                    CustomButtonWithBorder(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .showYellowCard(nameCard: 'one');
                                      },
                                      backGroundFontColor: Colors.yellowAccent,
                                      fontColor: Colors.black87,
                                      textName: 'Y',
                                      heightOfButton: 25,
                                      widthOfButton: 30,
                                      borderColor: Colors.black,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomButton(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .counterDecrement(
                                                buttonNumber: 1,
                                                playerName: 'match one');
                                      },
                                      heightOfButton: 20,
                                      widthOfButton: 30,
                                      textName: '-',
                                      fontColor: Colors.black87,
                                      backGroundFontColor: Colors.white,
                                    ),
                                    CustomTextName(
                                      textName: 'Match',
                                      fontSize: 12,
                                      fontColor: Colors.green,
                                    ),
                                    CustomButton(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .counterIncrement(
                                                buttonNumber: 1,
                                                playerName: 'match one');
                                      },
                                      heightOfButton: 20,
                                      widthOfButton: 30,
                                      textName: '+',
                                      fontColor: Colors.black87,
                                      backGroundFontColor: Colors.white,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 20,
                                  width: 140,
                                  color: Colors.lightGreenAccent[100],
                                  child: Center(
                                    child: CustomTextName(
                                      textName: 'Mohamed Alhamad',
                                      fontSize: 12,
                                      fontColor: Colors.black87,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    CustomButton(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .gameDecrement(
                                                buttonNumber: 1,
                                                playerName: 'two');
                                      },
                                      heightOfButton: 20,
                                      widthOfButton: 30,
                                      textName: '-',
                                      fontColor: Colors.black87,
                                      backGroundFontColor:
                                          Colors.lightGreenAccent[100],
                                    ),
                                    CustomTextName(
                                      textName: 'GAME',
                                      fontSize: 12,
                                      fontColor: Colors.red,
                                    ),
                                    CustomButton(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .gameIncrement(
                                                buttonNumber: 1,
                                                playerName: 'two');
                                      },
                                      heightOfButton: 20,
                                      widthOfButton: 30,
                                      textName: '+',
                                      fontColor: Colors.black87,
                                      backGroundFontColor:
                                          Colors.lightGreenAccent[100],
                                    ),
                                    // right W-Card Button
                                    CustomButton(
                                        onTap: () {
                                          BlocProvider.of<CounterCubit>(context)
                                              .showTimeOutCard(nameCard: 'two');
                                        },
                                        backGroundFontColor: Colors.green,
                                        fontColor: Colors.white,
                                        textName: 'W Card',
                                        heightOfButton: 20,
                                        widthOfButton: 50),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomButton(
                                        backGroundFontColor: Colors.green,
                                        fontColor: Colors.black45,
                                        textName: 'TO',
                                        heightOfButton: 20,
                                        widthOfButton: 30),
                                    CustomOclock(),
                                    CustomButton(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .counterDecrement(
                                                buttonNumber: 1,
                                                playerName: 'two');
                                      },
                                      heightOfButton: 20,
                                      widthOfButton: 30,
                                      textName: '-',
                                      fontColor: Colors.black87,
                                      backGroundFontColor: Colors.white,
                                    ),
                                    CustomTextName(
                                      textName: 'Points',
                                      fontSize: 12,
                                      fontColor: Colors.green,
                                    ),
                                    CustomButton(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .counterIncrement(
                                                buttonNumber: 1,
                                                playerName: 'two');
                                      },
                                      heightOfButton: 20,
                                      widthOfButton: 30,
                                      textName: '+',
                                      fontColor: Colors.black87,
                                      backGroundFontColor: Colors.white,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomButtonWithBorder(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .showYR(nameCard: 'yr1two');
                                      },
                                      backGroundFontColor: Colors.red,
                                      fontColor: Colors.white,
                                      textName: 'Y R 1',
                                      heightOfButton: 20,
                                      widthOfButton: 40,
                                      borderColor: Colors.white,
                                    ),
                                    CustomButtonWithBorder(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .showYR(nameCard: 'yr2two');
                                      },
                                      backGroundFontColor: Colors.red,
                                      fontColor: Colors.white,
                                      textName: 'Y R 2',
                                      heightOfButton: 20,
                                      widthOfButton: 40,
                                      borderColor: Colors.white,
                                    ),
                                    CustomButtonWithBorder(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .showYellowCard(nameCard: 'two');
                                      },
                                      backGroundFontColor: Colors.yellowAccent,
                                      fontColor: Colors.black87,
                                      textName: 'Y',
                                      heightOfButton: 25,
                                      widthOfButton: 30,
                                      borderColor: Colors.black,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomButton(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .counterDecrement(
                                                buttonNumber: 1,
                                                playerName: 'match two');
                                      },
                                      heightOfButton: 20,
                                      widthOfButton: 30,
                                      textName: '-',
                                      fontColor: Colors.black87,
                                      backGroundFontColor: Colors.white,
                                    ),
                                    CustomTextName(
                                      textName: 'Match',
                                      fontSize: 12,
                                      fontColor: Colors.green,
                                    ),
                                    CustomButton(
                                      onTap: () {
                                        BlocProvider.of<CounterCubit>(context)
                                            .counterIncrement(
                                                buttonNumber: 1,
                                                playerName: 'match two');
                                      },
                                      heightOfButton: 20,
                                      widthOfButton: 30,
                                      textName: '+',
                                      fontColor: Colors.black87,
                                      backGroundFontColor: Colors.white,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 36,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                                backGroundFontColor: Colors.pinkAccent,
                                fontColor: Colors.black54,
                                textName: 'interval',
                                heightOfButton: 30,
                                widthOfButton: 50),
                            CustomButton(
                                backGroundFontColor: Colors.orange,
                                fontColor: Colors.black87,
                                textName: 'Practice',
                                heightOfButton: 30,
                                widthOfButton: 50),
                            CustomButton(
                                backGroundFontColor: Colors.lightBlueAccent,
                                fontColor: Colors.black87,
                                textName: 'Serve',
                                heightOfButton: 30,
                                widthOfButton: 50),
                            TennisRacketButton(
                              heightOfButton: 30,
                              widthOfButton: 40,
                              onTap: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .showTennisRacket();
                              },
                            ),
                            CustomButton(
                                onTap: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .playersReset();
                                },
                                backGroundFontColor:
                                    Colors.lightGreenAccent[100],
                                fontColor: Colors.black87,
                                textName: 'Reset',
                                heightOfButton: 30,
                                widthOfButton: 50),
                            CustomButton(
                              backGroundFontColor: Colors.lightGreenAccent[100],
                              fontColor: Colors.black87,
                              textName: 'Cancel time',
                              heightOfButton: 30,
                              widthOfButton: 70,
                              fontSize: 12,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      listener: (BuildContext context, CounterState state) {},
    );
  }
}

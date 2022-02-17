import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gameapptask/core/constants/color_constants.dart';
import 'package:gameapptask/core/constants/padding_constants.dart';
import 'package:gameapptask/core/constants/string_constants.dart';
import 'package:gameapptask/feature/view/game_page/widgets/game_appbar.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  Timer? timer;
  int start = 15;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            //GAME APPBAR
            Expanded(
              flex: MediaQuery.of(context).orientation == Orientation.portrait
                  ? 1
                  : 2,
              child: GameAppbar(
                timer: start,
              ),
            ),
            //REMAIN PART OF PAGE
            Expanded(
              flex: MediaQuery.of(context).orientation == Orientation.portrait
                  ? 6
                  : 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                          padding: PaddingConstants.PaddingVertLow.padding,
                          child: Image.asset('assets/images/game.png'))),
                  Expanded(
                    child: Text(
                      start == 0
                          ? StringConstants.GameOver.value
                          : StringConstants.Go.value,
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: start == 0
                              ? ColorConstants.ColorRed.color
                              : ColorConstants.ThemeColor.color),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

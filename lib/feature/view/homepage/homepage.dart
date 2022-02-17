import 'package:flutter/material.dart';
import 'package:gameapptask/core/constants/color_constants.dart';
import 'package:gameapptask/core/constants/padding_constants.dart';
import 'package:gameapptask/core/constants/string_constants.dart';
import 'package:gameapptask/feature/view/game_page/game_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.BackgroundWhite.color,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 3, child: Image.asset('assets/images/logo1.png')),
            Expanded(
              child: Text(
                StringConstants.HomeTitle.value,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: ColorConstants.BlackColor.color),
              ),
            ),
            Padding(
              padding: PaddingConstants.PaddingHorizontalMed.padding,
              child: _buildStartButton(context),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  //PUSHES GAMEPAGE
  ElevatedButton _buildStartButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: ColorConstants.ButtonColor.color,
      ),
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => const GamePage()));
      },
      child: Text(
        StringConstants.ButtonTitle.value,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: ColorConstants.BackgroundWhite.color),
      ),
    );
  }
}

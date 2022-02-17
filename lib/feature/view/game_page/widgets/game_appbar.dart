import 'package:flutter/material.dart';
import 'package:gameapptask/core/constants/color_constants.dart';
import 'package:gameapptask/core/constants/padding_constants.dart';
import 'package:gameapptask/feature/view/game_page/widgets/dropdown.dart';
import 'package:gameapptask/feature/view/game_page/widgets/user_profile_stack.dart';

import 'dialog.dart';

class GameAppbar extends StatefulWidget {
  int timer;
  GameAppbar({Key? key, required this.timer}) : super(key: key);

  @override
  _GameAppbarState createState() => _GameAppbarState();
}

class _GameAppbarState extends State<GameAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.timer > 5 ? Colors.green : Colors.red,
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Colors.black54, blurRadius: 5.0, offset: Offset(0.0, 0.5))
        ],
      ),
      padding: PaddingConstants.PaddingLow.padding,
      child: _buildAppBarContent(context),
    );
  }

  Row _buildAppBarContent(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: IconButton(
              color: ColorConstants.BackgroundWhite.color,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const DialogWidget(),
                );
              },
              icon: const Icon(Icons.info)),
        ),
        const Expanded(
            flex: 3,
            child: UserProfileStack(
                username: 'Yonca', userImg: 'assets/images/user2.jpeg')),
        Expanded(flex: 2, child: _buildScoreTimeWidget('5', '2')),
        const Expanded(
            flex: 3,
            child: UserProfileStack(
                username: 'Vader', userImg: 'assets/images/user1.jpg')),
        Expanded(
          child: DropdownWidget(),
        ),
      ],
    );
  }

  Column _buildScoreTimeWidget(String score1, String score2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.contain,
          child: Text(
            "$score1 - $score2",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                color: ColorConstants.BackgroundWhite.color,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: PaddingConstants.PaddingHorizontalLow.padding,
          child: Text(
            widget.timer.toString(),
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: ColorConstants.BackgroundWhite.color,
                ),
          ),
        ),
      ],
    );
  }
}

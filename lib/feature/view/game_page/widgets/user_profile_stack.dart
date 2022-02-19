import 'package:flutter/material.dart';
import 'package:gameapptask/core/constants/color_constants.dart';
import 'package:gameapptask/core/constants/padding_constants.dart';
class UserProfileStack extends StatelessWidget {
  final String username;
  final String userImg;
  const UserProfileStack(
      {Key? key, required this.username, required this.userImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _radius = 10;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(_radius),
            child: Image.asset(
              userImg,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: PaddingConstants.PaddingTop.padding,
            child: Text(
              username.toUpperCase(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: ColorConstants.BackgroundWhite.color,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

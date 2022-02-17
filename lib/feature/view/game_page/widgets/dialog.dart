import 'package:flutter/material.dart';
import 'package:gameapptask/core/constants/color_constants.dart';
import 'package:gameapptask/core/constants/radius_constants.dart';
import 'package:gameapptask/core/constants/string_constants.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(child: Text(StringConstants.DialogInfo.value)),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(RadiusConstants.Radius20.radius)),
      content: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: const [
              Text(StringConstant.text),
            ],
          ),
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: ColorConstants.ColorRed.color),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(StringConstants.DialogClose.value)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: ColorConstants.ButtonColor.color),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(StringConstants.DialogOk.value)),
          ],
        )
      ],
    );
  }
}

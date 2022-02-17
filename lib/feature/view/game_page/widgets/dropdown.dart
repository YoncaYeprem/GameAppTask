import 'package:flutter/material.dart';
import 'package:gameapptask/core/constants/color_constants.dart';
import 'package:gameapptask/core/constants/popup_menu_items.dart';

class DropdownWidget extends StatelessWidget {
  DropdownWidget({Key? key}) : super(key: key);
  List<IconData> items = PopupMenuItems.iconTypes;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => items
          .map((icon) => PopupMenuItem(
                child: Center(
                  child: Icon(
                    icon,
                    color: ColorConstants.IconColor.color,
                  ),
                ),
              ))
          .toList(),
      child: const Icon(
        Icons.article_outlined,
        color: Colors.white,
      ),
    );
  }
}

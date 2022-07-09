import 'package:flutter/material.dart';
import 'package:suitmedia_mobile_developer_intern_test/themes/color_themes.dart';
import 'package:suitmedia_mobile_developer_intern_test/themes/fonts.dart';

class AppBarApp extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function backOnCLick;

  const AppBarApp({
    Key? key,
    required this.title,
    required this.backOnCLick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: FontApp.APP_BAR),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () => backOnCLick(),
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: ColorThemes.BACK_ICON_COLOR,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

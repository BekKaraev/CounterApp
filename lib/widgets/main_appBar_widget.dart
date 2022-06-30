import 'package:flutter/material.dart';
import 'package:tapchyrma1/constants/text_styles/app_text_styles.dart';

class MainAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String appBarText;

  const MainAppBarWidget({
    this.appBarText,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      title: Text(
        appBarText,
        style: AppTextStyles.appBar,
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
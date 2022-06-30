import 'package:flutter/material.dart';
import 'package:tapchyrma1/constants/colors/app_colors.dart';
import 'package:tapchyrma1/constants/texts/app-texts.dart';
import 'package:tapchyrma1/widgets/main_appBar_widget.dart';
import 'package:tapchyrma1/widgets/main_button_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key, this.sendNumber}) : super(key: key);
  final int sendNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const MainAppBarWidget(
        appBarText: AppTexts.homeWork2,
      ),
      body: Center(
          child: MainButtonWidget(
        color: AppColors.blue,
        number: sendNumber,
        onPressed: () => Navigator.pop(context),
      )),
    );
  }
}
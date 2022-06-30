import 'package:flutter/material.dart';
import 'package:tapchyrma1/constants/colors/app_colors.dart';
import 'package:tapchyrma1/pages/second_page.dart';
import 'package:tapchyrma1/widgets/custom_button.dart';
import 'package:tapchyrma1/widgets/main_appBar_widget.dart';
import 'package:tapchyrma1/widgets/main_button_widget.dart';

import '../constants/texts/app-texts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:const MainAppBarWidget(
        appBarText: AppTexts.homeWork1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainButtonWidget(
              number: _number,
              color: AppColors.main,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    sendNumber: _number,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  icon: Icons.remove,
                  onPressed: () => buttonChange(false),
                ),
               const SizedBox(width: 100,),
                CustomButton(
                  icon: Icons.add,
                  onPressed: () => buttonChange(true),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void buttonChange(bool isAdd) {
    if (isAdd == true) {
      setState(() {
        _number++;
      });
    } else {
      setState(() {
        _number--;
      });
    }
  }
}
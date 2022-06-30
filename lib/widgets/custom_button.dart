import 'package:flutter/material.dart';
import 'package:tapchyrma1/constants/colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;
  const CustomButton({
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.secondory,
            borderRadius: BorderRadius.circular(10.0)),
        width: 69.0,
        height: 44.0,
        child: Icon(
          icon,
          color: AppColors.white,
        ),
      ),
    );
  }
}
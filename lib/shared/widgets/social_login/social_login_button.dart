import 'package:flutter/material.dart';
import 'package:payflow_app/shared/themes/app_colors.dart';
import 'package:payflow_app/shared/themes/app_images.dart';
import 'package:payflow_app/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  final EdgeInsetsGeometry margin;
  const SocialLoginButton({Key? key, required this.onTap, required this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        margin: margin,
        decoration: BoxDecoration(
          color: AppColors.shape,
          borderRadius: BorderRadius.circular(5),
          border: const Border.fromBorderSide(BorderSide(color: AppColors.stroke))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AppImages.google),
            Text("Entrar com Google", style: AppTextStyles.buttonGray,),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:payflow_app/shared/widgets/set_label_buttons/set_label_buttons.dart';

import '../../themes/app_colors.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryText;
  final VoidCallback primaryOnPressed;
  final String secundaryText;
  final VoidCallback secundaryOnPressed;
  final String title;
  final String subTitle;
  BottomSheetWidget({
    Key? key,
    required this.primaryText,
    required this.primaryOnPressed, 
    required this.secundaryText, 
    required this.secundaryOnPressed,
    required this.title, 
    required this.subTitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppColors.shape,
        child: Column(
          children: [
          Text(title),
          Text(subTitle),
          SetLabelButtons(
            primaryText: primaryText, 
            primaryOnPressed: primaryOnPressed, 
            secundaryText: secundaryText, 
            secundaryOnPressed: secundaryOnPressed
          )
        ]),
      ),
    );
  }
}
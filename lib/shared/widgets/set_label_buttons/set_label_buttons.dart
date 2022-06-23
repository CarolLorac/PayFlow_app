import 'package:flutter/material.dart';

import '../divider_vertical/divider_vertical_widget.dart';
import '../label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryText;
  final VoidCallback primaryOnPressed;
  final String secundaryText;
  final VoidCallback secundaryOnPressed;
  const SetLabelButtons({
    Key? key,
    required this.primaryText,
    required this.primaryOnPressed,
    required this.secundaryText,
    required this.secundaryOnPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 56,
        child: Row(
          children: [
            Expanded(
              child: LabelButton(
                text: primaryText,
                onPressed: primaryOnPressed
              ),
            ),
            const DividerVerticalWidget(),
            Expanded(
              child: LabelButton(
                text: secundaryText,
                onPressed: secundaryOnPressed
              ),
            ),
          ],
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:payflow_app/shared/themes/app_text_styles.dart';

class LabelButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const LabelButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextButton(
        onPressed: onPressed,
        child: Text(text, style: AppTextStyles.buttonHeading,)
      ),
    );
  }
}
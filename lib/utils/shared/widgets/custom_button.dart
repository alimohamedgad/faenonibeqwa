import 'package:faenonibeqwa/utils/extensions/context_extension.dart';
import 'package:faenonibeqwa/utils/shared/widgets/small_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final double? screenWidth;
  final Color? color;
  final Color? textColor;

  final String text;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.textColor,
    this.screenWidth,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth ?? context.screenWidth * 0.8,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: ElevatedButton(
          onPressed: onTap,
          style: context.theme.elevatedButtonTheme.style!
              .copyWith(backgroundColor: MaterialStatePropertyAll(color)),
          child: SmallText(
            text: text,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

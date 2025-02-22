import 'package:faenonibeqwa/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onSubmitted;
  final Function()? onTap;
  final String? hintText;
  final String? labelText;
  final String? initialValue;
  final Color? colorIcon;
  final Widget? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyBoardTyp;
  final double? width;
  final double? hight;
  final int? maxLines;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final bool? readOnly;
  final Function(String)? onChange;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextField({
    Key? key,
    required this.controller,
    this.onSubmitted,
    this.onTap,
    this.hintText,
    this.labelText,
    this.initialValue,
    this.colorIcon,
    this.prefixIcon,
    this.suffixIcon,
    this.keyBoardTyp,
    this.width,
    this.hight,
    this.maxLines,
    this.maxLength,
    this.textInputAction,
    this.validator,
    this.obscureText,
    this.readOnly,
    this.onChange,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      keyboardType: keyBoardTyp,
      onFieldSubmitted: onSubmitted,
      controller: controller,
      validator: validator,
      inputFormatters: inputFormatters,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          border: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          enabledBorder: outlineInputBorder()),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.8),
        // color: context.theme.cardColor,
      ),
    );
  }
}

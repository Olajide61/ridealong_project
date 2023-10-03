import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'color.dart';
import 'customised_text.dart';

class CustomisedField extends StatelessWidget {
  final Widget? prefix;
  final Widget? suffix;
  final String? labelText;
  final String? hintText;
  final String? title;
  final String? obscuringCharacter;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final TextEditingController? controller;
  final int? maxLines;
  final int? maxLength;
  final bool readOnly;
  final bool? enabled;
  final bool enableCopy;
  final bool obscureText;
  final bool? autoFocus;
  final Color? hintColor;
  final Color? borderColor;

  final Color? textColor;
  final Color? color;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;

  const CustomisedField({
    super.key,
    this.prefix,
    this.suffix,
    this.suffixIcon,
    this.validator,
    this.labelText,
    this.textInputAction,
    this.textInputType,
    this.textAlign,
    this.onChanged,
    this.controller,
    this.readOnly = false,
    this.obscureText = false,
    this.obscuringCharacter,
    this.maxLines,
    this.onTap,
    this.autoFocus = false,
    this.focusNode,
    this.maxLength,
    this.title,
    this.enabled,
    this.inputFormatters,
    this.hintColor,
    this.enableCopy = true,
    this.hintText,
    this.color,
    this.textColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: borderColor ?? AppColors.grey,
      ),
      borderRadius: BorderRadius.circular(12),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labelText != null)
          Padding(
            padding: const EdgeInsets.only(left: 13, bottom: 7),
            child: CustomisedText(
              labelText!,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: color ?? AppColors.blue,
            ),
          ),
        TextFormField(
          enableInteractiveSelection: enableCopy,
          cursorColor: AppColors.blue,
          cursorWidth: 1,
          focusNode: focusNode,
          textCapitalization: TextCapitalization.sentences,
          maxLines: obscureText ? 1 : maxLines,
          autofocus: autoFocus!,
          enabled: enabled ?? true,
          maxLength: maxLength,
          inputFormatters: inputFormatters,
          textInputAction: textInputAction,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: AppColors.lightgrey,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          readOnly: readOnly,
          decoration: InputDecoration(
            counterStyle: const TextStyle(fontSize: 0),
            prefix: const SizedBox(width: 25),
            contentPadding:
                EdgeInsets.symmetric(vertical: maxLines != null ? 10 : 0),
            suffix: suffix,
            suffixIcon: suffixIcon,
            prefixIcon: prefix,
            filled: true,
            fillColor: const Color(0xffF7F7F9),
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'Poppins',
              color: hintColor ?? AppColors.ash,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            border: border,
            errorBorder: border,
            enabledBorder: border,
            focusedBorder: border,
            focusedErrorBorder: border,
            disabledBorder: border,
          ),
          onTap: onTap,
          obscureText: obscureText,
          obscuringCharacter: '●',
          controller: controller,
          textAlign: textAlign ?? TextAlign.start,
          keyboardType: textInputType,
          onChanged: onChanged,
          validator: validator,
        )
      ],
    );
  }
}

import 'package:app/components/textFieldContainer.dart';
import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final IconData suffixIcon;
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.suffixIcon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}

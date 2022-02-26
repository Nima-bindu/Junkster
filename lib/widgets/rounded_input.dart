import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:login/constants.dart';
import 'package:login/widgets/text_field.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({Key? key, this.hintText, this.icon = Icons.person})
      : super(key: key);
  final String? hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(fontFamily: 'Martel'),
            border: InputBorder.none),
      ),
    );
  }
}

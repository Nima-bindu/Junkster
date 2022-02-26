import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key, this.press, this.textColor = Colors.black, required this.text})
      : super(key: key);
  final String text;
  final Function()? press;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: size.width * 0.8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: newElevatedButton(),
        ));
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 17,
        ),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(145, 224, 162, 1),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          textStyle: TextStyle(
              letterSpacing: 2,
              color: textColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: 'Martel')),
    );
  }
}

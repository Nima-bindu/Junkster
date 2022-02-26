import 'package:flutter/cupertino.dart';
import 'package:login/constants.dart';
import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class Upside extends StatelessWidget {
  const Upside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 2,
          color: kPrimaryColor,
        ),
        iconBackButton(context),
        Positioned(
          top: 160,
          left: 95,
          child: Text(
            'WELCOME!',
            style: TextStyle(
              fontFamily: 'Marcellus SC',
              fontSize: 40,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}

iconBackButton(BuildContext context) {
  return IconButton(
    color: Colors.black,
    iconSize: 28,
    icon: const Icon(CupertinoIcons.arrow_left),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}

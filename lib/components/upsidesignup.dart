import 'package:flutter/cupertino.dart';
import 'package:login/constants.dart';
import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class UpsideSignup extends StatelessWidget {
  const UpsideSignup({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
          ),
        ),
        iconBBackButton(context),
        Positioned(
          top: 0,
          right: 0,
          child: Image.asset(
            'assets/circle.png',
            scale: 1,
          ),
        ),
        iconBBackButton(context),
        Positioned(
          top: 180,
          left: 130,
          child: Text(
            'SIGN UP',
            style: TextStyle(
              fontFamily: 'Marcellus SC',
              fontSize: 38,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

iconBBackButton(BuildContext context) {
  return IconButton(
    color: Colors.black,
    iconSize: 28,
    icon: const Icon(CupertinoIcons.arrow_left),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}

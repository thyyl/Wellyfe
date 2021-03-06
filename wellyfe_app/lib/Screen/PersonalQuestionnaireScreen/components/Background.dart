import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.children,
  }) : super(key: key);

  final Widget children;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
            top: size.height / 4,
            right: -120,
            child: Image(image: AssetImage("assets/pictures/questionB.png"), height: size.height, width: size.width),
          ),
          children,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:wellyfe_app/constants.dart';

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
        alignment: Alignment.center,
        children: [
          Positioned(
            top: size.height * 0.025,
            right: -size.width * 0.2,
            child: NeumorphicIcon(
              Icons.wb_cloudy_sharp,
              size: 350,
              style: NeumorphicStyle(
                shape: NeumorphicShape.convex,
                depth: 20,
                border: NeumorphicBorder(
                  color: Colors.grey[300],
                  width: 0.8,
                ),
              ),
            ),
          ),
          children,
        ],
      ),
    );
  }
}
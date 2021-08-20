import 'package:flutter/material.dart';

class TopLevelBar extends StatelessWidget {
  const TopLevelBar({
    Key? key,
    required this.therapy,
  }) : super(key: key);

  final String therapy;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          therapy,
          style: TextStyle(
            fontSize: 30,
            fontFamily: "NunitoSans",
            color: Color(0XFF394D70),
            fontWeight: FontWeight.w700,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFFEBECF0),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5.0,
                        offset: Offset(-3, -3),
                        color: Colors.white
                    ),
                    BoxShadow(
                        blurRadius: 5.0,
                        offset: Offset(3, 3),
                        color: Colors.black.withOpacity(.25)
                    )
                  ]
              ),
              child: Center(
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Color(0XFF394D70),
                    size: 30,
                  )
              )
          ),
        ),
      ],
    );
  }
}
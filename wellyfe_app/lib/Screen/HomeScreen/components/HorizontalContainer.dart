import 'package:flutter/material.dart';
class HorizontalContainer extends StatelessWidget {
  const HorizontalContainer({
    Key? key,
    required this.function,
    required this.title,
  }) : super(key: key);

  final VoidCallback function;
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: function,
      child: Container(
        height: size.height * 0.1,
        width: size.width * 0.85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color(0XFFF2F3F7),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5.0,
                  offset: Offset(-3, -3),
                  color: Colors.white
              ),
              BoxShadow(
                  blurRadius: 5.0,
                  offset: Offset(3, 3),
                  color: Colors.black.withOpacity(.15)
              )
            ]
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "NunitoSans",
                  color: Color(0XFF394D70),
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
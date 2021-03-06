import 'package:flutter/material.dart';

class DiaryLeftPart extends StatelessWidget {
  const DiaryLeftPart({
    Key? key,
    required this.dayNumber,
    required this.dayString,
    required this.mood,
    required this.weather,
  }) : super(key: key);

  final String dayNumber;
  final String dayString;
  final String mood;
  final String weather;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.25,
      width: size.width * 0.2,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 45.0, 0, 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    children: [
                      TextSpan(
                        text: dayNumber + "\n",
                        style: TextStyle(
                          height: 0.5,
                          fontSize: 30,
                          fontFamily: "TitilliumWeb",
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: dayString,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Montserrat",
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(image: AssetImage("assets/logo/$mood.png"), width: 15, height: 15),
                    Image(image: AssetImage("assets/logo/$weather.png"), width: 15, height: 15),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
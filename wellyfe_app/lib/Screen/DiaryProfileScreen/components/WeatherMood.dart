import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherMood extends StatefulWidget {
  @override
  _WeatherMoodState createState() => _WeatherMoodState();
}

class _WeatherMoodState extends State<WeatherMood> {
  bool isWeather = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      height: size.height * 0.215,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Color(0XFFE5EBF2),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildWeatherMoodSwitch(),
            Container(
              width: size.width * 0.8 - 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DataBarIcon(
                    data: 7,
                    total: 10,
                    icon: "sunny",
                  ),
                  SizedBox(width: size.width * 0.015),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildWeatherMoodSwitch() {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isWeather = true;
              });
            },
            child: Text(
              "Weather",
              style: TextStyle(
                fontSize: 21,
                fontFamily: "TitilliumWeb",
                color: isWeather ? Colors.grey.shade600 : Colors.grey.shade400,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            width: 2,
            height: 25,
            color: Colors.grey.shade500,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isWeather = false;
              });
            },
            child: Text(
              "Mood",
              style: TextStyle(
                fontSize: 21,
                fontFamily: "TitilliumWeb",
                color: isWeather ? Colors.grey.shade400 : Colors.grey.shade600,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DataBarIcon extends StatelessWidget {
  const DataBarIcon({
    Key? key,
    required this.data,
    required this.total,
    required this.icon,
  }) : super(key: key);

  final int data;
  final int total;
  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.075,
      height: size.height * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            data.toString(),
            style: TextStyle(
              fontSize: 21,
              fontFamily: "TitilliumWeb",
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            height: size.height * 0.1 * data / total + 3,
            width: size.width * 0.01,
            decoration: BoxDecoration(
              color: Colors.grey.shade500,
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Image(image: AssetImage("assets/logo/$icon.png"))
        ],
      ),
    );
  }
}
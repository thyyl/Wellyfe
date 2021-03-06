import 'package:flutter/material.dart';

class ActivityRecommendationsIndividual extends StatelessWidget {
  const ActivityRecommendationsIndividual({
    Key? key,
    required this.activity,
    required this.icon,
    required this.duration,
  }) : super(key: key);

  final String activity;
  final String icon;
  final String duration;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2,
      width: size.width * 0.25,
      decoration: BoxDecoration(
          color: Color(0XFFF4F9FF),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          boxShadow: [
            BoxShadow(
                blurRadius: 5.0,
                offset: Offset(-3, -3),
                color: Colors.grey.withOpacity(0.1)
            ),
            BoxShadow(
                blurRadius: 5.0,
                offset: Offset(3, 3),
                color: Colors.black.withOpacity(.25)
            )
          ]
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Image(
              image: AssetImage("assets/pictures/${activity.toLowerCase()}.jpg"),
              fit: BoxFit.cover,
              width: size.width * 0.25,
              height: size.height * 0.2,
            ),
          ),
          Container(
            width: size.width * 0.25,
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.15),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  activity,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.5,
                    fontFamily: "NunitoSans",
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )
          // Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         Image(image: AssetImage(icon)),
          //         SizedBox(height: size.height * 0.01),
          //         Text(
          //           activity,
          //           textAlign: TextAlign.center,
          //           style: TextStyle(
          //             fontSize: 22.5,
          //             fontFamily: "NunitoSans",
          //             color: Color(0XFF394D70),
          //             fontWeight: FontWeight.w700,
          //           ),
          //         ),
          //         Text(
          //           duration,
          //           style: TextStyle(
          //             fontSize: 22.5,
          //             fontFamily: "NunitoSans",
          //             color: Colors.black.withOpacity(0.3),
          //             fontWeight: FontWeight.w700,
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
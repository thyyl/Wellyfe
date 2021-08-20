import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:wellyfe_app/Screen/TherapyCareOverviewScreen/components/AppointmentContainer.dart';
import 'package:wellyfe_app/Screen/TherapyCareOverviewScreen/components/SpecialistRecommendationContainer.dart';
import 'package:wellyfe_app/Screen/TherapyCareOverviewScreen/components/TherapyShortcut.dart';
import 'package:wellyfe_app/Screen/TherapyCareOverviewScreen/components/TopLevelBar.dart';
import 'package:wellyfe_app/Screen/TherapyCareOverviewScreen/components/Background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      children: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopLevelBar(),
            SizedBox(height: size.height * 0.025),
            Text(
              "Hello, Gigi!",
              style: TextStyle(
                fontSize: 25,
                fontFamily: "NunitoSans",
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              "Find your doctor",
              style: TextStyle(
                fontSize: 35,
                fontFamily: "NunitoSans",
                color: Color(0XFF394D70),
                fontWeight: FontWeight.w700,
              ),
            ),
            TherapyShortcut(),
            SizedBox(height: size.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Next Appointment",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "NunitoSans",
                    color: Color(0XFF394D70),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.025),
            AppointmentContainer(
              therapy: "Marriage",
              name: "Dr. Peter Parker",
              date: "26 August",
              time: "1.00 pm",
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "Specialist Recommendations",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "NunitoSans",
                color: Color(0XFF394D70),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: size.height * 0.025),
            SpecialistRecommendationContainer()
          ],
        ),
      )
    );
  }
}







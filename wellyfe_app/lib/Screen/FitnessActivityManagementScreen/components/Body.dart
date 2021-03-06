import 'package:flutter/material.dart';
import 'package:wellyfe_app/Screen/FitnessActivityManagementScreen/components/ActivityRecommendationsMenu.dart';
import 'package:wellyfe_app/Screen/FitnessActivityManagementScreen/components/StepsBarChart.dart';
import 'package:wellyfe_app/Screen/FitnessActivityManagementScreen/components/StepsLowerContainer.dart';
import 'package:wellyfe_app/Screen/FitnessActivityManagementScreen/components/TopLevelBar.dart';
import 'package:wellyfe_app/Screen/FitnessManagementOverviewScreen/components/Background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      children: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 75.0, 20.0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopLevelBar(),
            SizedBox(height: size.height * 0.04),
            StepsBarChart(),
            SizedBox(height: size.height * 0.035),
            StepsLowerContainer(),
            SizedBox(height: size.height * 0.035),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Activity Recommendations",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "NunitoSans",
                      color: Color(0XFF394D70),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  ActivityRecommendationsMenu(),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}


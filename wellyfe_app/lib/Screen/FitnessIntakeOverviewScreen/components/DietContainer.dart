import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wellyfe_app/Screen/FitnessIntakeOverviewScreen/components/CategoryData.dart';

class DietContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ketogenic Diet",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "NunitoSans",
                color: Color(0XFF394D70),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              children: [
                Image(image: AssetImage("assets/logo/flame.png")),
                Text(
                  "1500" + " kcal",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "NunitoSans",
                    color: Colors.black.withOpacity(0.3),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            CategoryData(
              category: "Carb",
              data: "100",
            ),
            CategoryData(
              category: "Protein",
              data: "100",
            ),
            CategoryData(
              category: "Fat",
              data: "100",
            )
          ],
        ),
        Transform.rotate(
          angle: pi,
          child: Container(
            height: 300,
            width: 250,
            child: Image(
              image: AssetImage("assets/pictures/breakfast.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
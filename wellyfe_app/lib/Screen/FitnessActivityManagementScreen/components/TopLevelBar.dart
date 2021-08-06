import 'package:flutter/material.dart';
import 'package:wellyfe_app/Screen/FitnessWeightManagementScreen/FitnessWeightManagementScreen.dart';

class TopLevelBar extends StatelessWidget {
  const TopLevelBar({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return FitnessWeightManagementScreen();
                  }
              ));
            },
            child: Text(
              "Health Status",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "NunitoSans",
                color: Colors.grey.withOpacity(0.5),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(width: size.width * 0.05),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0XFF394D70)
            ),
          ),
          SizedBox(width: size.width * 0.025),
          GestureDetector(
            child: Text(
              "Activity",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "NunitoSans",
                color: Color(0XFF394D70),
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
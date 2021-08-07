import 'package:flutter/material.dart';
import 'package:wellyfe_app/Screen/FitnessActivityManagementScreen/FitnessActivityManagementScreen.dart';

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
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0XFF394D70)
            ),
          ),
          SizedBox(width: size.width * 0.025),
          Text(
            "Health Status",
            style: TextStyle(
              fontSize: 30,
              fontFamily: "NunitoSans",
              color: Color(0XFF394D70),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(width: size.width * 0.05),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return FitnessActivityManagementScreen();
                  }
              ));
            },
            child: Text(
              "Activity",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "NunitoSans",
                color: Colors.grey.withOpacity(0.5),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(width: size.width * 0.125),
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFF4F9FF),
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
                child: Center(
                    child: Image(image: AssetImage("assets/logo/menu.png"))
                )
            )
          )
        ],
      ),
    );
  }
}

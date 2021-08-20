import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wellyfe_app/Screen/TherapyCareOverviewScreen/components/IconTime.dart';

class AppointmentContainer extends StatelessWidget {
  const AppointmentContainer({
    Key? key,
    required this.therapy,
    required this.name,
    required this.date,
    required this.time,
  }) : super(key: key);

  final String therapy;
  final String name;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.125,
        decoration: BoxDecoration(
            color: Color(0XFFE5EBF2),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5.0,
                  offset: Offset(-3, -3),
                  color: Colors.white.withOpacity(0.75)
              ),
              BoxShadow(
                  blurRadius: 5.0,
                  offset: Offset(3, 3),
                  color: Colors.black.withOpacity(.25)
              )
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0XFFE5EBF2),
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Center(
                      child: Text(
                        name.substring(4, 5),
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: "NunitoSans",
                          color: Color(0XFF394D70),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        therapy,
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "NunitoSans",
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "NunitoSans",
                          color: Color(0XFF394D70),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          IconTime(
                            width: 0.21,
                            icon: CupertinoIcons.calendar,
                            time: date,
                          ),
                          SizedBox(width: size.width * 0.025),
                          IconTime(
                            width: 0.175,
                            icon: CupertinoIcons.clock,
                            time: time,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
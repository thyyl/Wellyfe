import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:wellyfe_app/Screen/ScheduleAnalysisScreen/ScheduleAnalysisScreen.dart';
import 'package:wellyfe_app/Screen/ScheduleOverviewScreen/ScheduleOverviewScreen.dart';
import 'package:wellyfe_app/Screen/ScheduleOverviewScreen/components/TopLevelIcon.dart';
import 'package:intl/intl.dart';

class TopLevelBar extends StatelessWidget {
  TopLevelBar({
    Key? key,
  }) : super(key: key);

  final date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TopLevelIcon(
          asset: "assets/logo/home.png",
          function: () {
            Navigator.pushReplacement(context, PageTransition(
              type: PageTransitionType.fade,
              child: ScheduleOverviewScreen(),
            ));
          },
        ),
        Text(
          DateFormat('EEEE, d MMM').format(date),
          style: TextStyle(
            fontSize: 20,
            fontFamily: "NunitoSans",
            color: Color(0XFF394D70),
            fontWeight: FontWeight.w700,
          ),
        ),
        TopLevelIcon(
          asset: "assets/logo/chart.png",
          function: () {
            Navigator.pushReplacement(context, PageTransition(
              type: PageTransitionType.fade,
              child: ScheduleAnalysisScreen(),
            ));
          },
        ),
      ],
    );
  }
}
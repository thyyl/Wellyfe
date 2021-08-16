import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:wellyfe_app/Screen/DiaryOverviewScreen/DiaryOverviewScreen.dart';
import 'package:wellyfe_app/Screen/HomeScreen/components/Background.dart';
import 'package:wellyfe_app/Screen/HomeScreen/components/LeftContainer.dart';
import 'package:wellyfe_app/Screen/HomeScreen/components/RightMiddleContainer.dart';
import 'package:wellyfe_app/Screen/HomeScreen/components/RightOuterContainer.dart';
import 'package:wellyfe_app/Screen/ScheduleOverviewScreen/ScheduleOverviewScreen.dart';
import 'package:wellyfe_app/Screen/SleepTrackerOverviewScreen/SleepTrackerOverviewScreen.dart';
import 'package:wellyfe_app/Screen/TherapyCareOverviewScreen/TherapyCareOverviewScreen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      children: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 250.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: size.height * 0.525,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LeftContainer(
                        function: () {
                          Navigator.push(context, PageTransition(
                            type: PageTransitionType.fade,
                            child: ScheduleOverviewScreen(),
                          ));
                        },
                        title: "Schedule",
                      ),
                      LeftContainer(
                        function: () {
                          Navigator.push(context, PageTransition(
                            type: PageTransitionType.fade,
                            child: SleepTrackerOverviewScreen(),
                          ));
                        },
                        title: "Sleep Tracker",
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.525,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RightOuterContainer(
                        function: () {
                          Navigator.push(context, PageTransition(
                            type: PageTransitionType.fade,
                            child: TherapyCareOverviewScreen(),
                          ));
                        },
                        title: "Therapy Care",
                      ),
                      RightMiddleContainer(),
                      RightOuterContainer(
                        function: () {
                          Navigator.push(context, PageTransition(
                            type: PageTransitionType.fade,
                            child: DiaryOverviewScreen(),
                          ));
                        },
                        title: "Diary",
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}





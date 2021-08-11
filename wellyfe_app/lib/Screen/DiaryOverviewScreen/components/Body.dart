import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:wellyfe_app/Screen/DiaryDayListScreen/DiaryDayListScreen.dart';
import 'package:wellyfe_app/Screen/DiaryOverviewScreen/components/Background.dart';
import 'package:wellyfe_app/Screen/DiaryOverviewScreen/components/AddEntryButton.dart';
import 'package:wellyfe_app/Screen/DiaryOverviewScreen/components/MonthContainer.dart';

class Body extends StatelessWidget {

  String getMonth(int i) {
    switch (i) {
      case 1:
        return "JAN";
      case 2:
        return "FEB";
      case 3:
        return "MAR";
      case 4:
        return "APR";
      case 5:
        return "MAY";
      case 6:
        return "JUN";
      case 7:
        return "JUL";
      case 8:
        return "AUG";
      case 9:
        return "SEP";
      case 10:
        return "DEC";
      case 11:
        return "NOV";
      case 12:
        return "DEC";
    }

    return "";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
        children: Padding(
          padding: const EdgeInsets.symmetric(vertical: 150.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  DateFormat('y').format(DateTime.now()),
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "TitilliumWeb",
                    color: Color(0XFF394D70),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: size.height * 0.1),
                CarouselSlider(
                  items: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: MonthContainer(
                            monthNumber: i,
                            monthString: getMonth(i),
                            datesFilled: 6,
                            function: () {
                              Navigator.push(context, PageTransition(
                                type: PageTransitionType.fade,
                                child: DiaryDayListScreen(),
                              ));
                            },
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    initialPage: DateTime.now().month - 1,
                    height: size.height * 0.45,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.75,
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                AddEntryButton(),
              ],
            ),
          ),
        )
    );
  }
}

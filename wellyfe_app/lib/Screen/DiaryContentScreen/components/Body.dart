import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wellyfe_app/Core/Model/Diary.dart';
import 'package:wellyfe_app/Screen/DiaryContentScreen/components/PictureContainer.dart';
import 'package:wellyfe_app/Screen/DiaryContentScreen/components/TitleMoodTime.dart';
import 'package:wellyfe_app/Screen/DiaryContentScreen/components/Background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.diary
  }) : super(key: key);

  final Diary diary;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      children: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            diary.picture != ""
            ? PictureContainer(
              image: diary.picture,
            )
            : SizedBox(height: size.height * 0.3),
            SizedBox(height: size.height * 0.03),
            TitleTimeMood(
              title: diary.title,
              time: DateFormat('EEE, MMM d / y').format(diary.dateTime).toUpperCase(),
              mood: diary.mood,
              weather: diary.weather,
            ),
            SizedBox(height: size.height * 0.05),
            Center(
              child: Container(
                width: size.width * 0.8,
                height: size.height * 0.25,
                child: Text(
                  diary.content,
                  style: TextStyle(
                    fontSize: 27.5,
                    fontFamily: "Montserrat",
                    color: Colors.black.withOpacity(0.75),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}



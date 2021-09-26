import 'package:flutter/material.dart';

class DoctorProfileInfo extends StatelessWidget {
  const DoctorProfileInfo({
    Key? key,
    required this.name,
    required this.specialist,
    required this.university,
  }) : super(key: key);

  final String name;
  final String specialist;
  final String university;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
        top: size.height * 0.3,
        child: Container(
          height: size.height * 0.125,
          width: size.width * 0.8,
          decoration: BoxDecoration(
            color: Color(0XFF70A5D7),
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 3),
                color: Colors.grey,
                blurRadius: 5
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Dr. $name",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "NunitoSans",
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Specialist in $specialist counselling",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "NunitoSans",
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                university,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "NunitoSans",
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        )
    );
  }
}
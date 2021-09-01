import 'package:flutter/material.dart';
import 'package:wellyfe_app/Screen/PersonalQuestionnaireScreen/components/Background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      children: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let's get started!",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.5)
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}


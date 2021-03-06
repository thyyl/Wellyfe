import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:wellyfe_app/Screen/ForgotPasswordScreen/components/Background.dart';
import 'package:wellyfe_app/constants.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _emailController = TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> resetPassword() async {
    if (verifyEmail(_emailController.text)) {
      await _firebaseAuth.sendPasswordResetEmail(email: _emailController.text);
      Navigator.pop(context);
      showNotification("Please check your email.");
    } else {
      showNotification("Invalid email format.\nPlease try again.");
    }
  }

  bool verifyEmail(String value) {
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
  }

  ToastFuture showNotification(String content) {
    return showToast(
      content,
      context: context,
      animation: StyledToastAnimation.fade,
      reverseAnimation: StyledToastAnimation.fade,
      duration: Duration(seconds: 3),
      position: StyledToastPosition.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
        children: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.5),
                Text(
                  "Forgot your password?",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w700,
                      color: Colors.black.withOpacity(.5)
                  ),
                ),
                Text(
                  "Reset it with your email!",
                  style: TextStyle(
                      fontSize: 17.5,
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w700,
                      color: Colors.black.withOpacity(.5)
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                buildEmailFormField(size),
                SizedBox(height: size.height * 0.05),
                GestureDetector(
                  onTap: () => resetPassword(),
                  child: Container(
                    height: size.height * 0.045,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0XFFA4A8D1),
                    ),
                    child: Center(
                      child: Text(
                        "Reset Password",
                        style: TextStyle(
                          fontFamily: "NunitoSans",
                          fontSize: 17.5,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

  Container buildEmailFormField(Size size) {
    return Container(
      width: size.width * 0.85,
      height: MediaQuery.of(context).size.width * 0.135,
      decoration: buildNeumorphicTextField(),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Enter your email",
          hintStyle: TextStyle(fontFamily: "NunitoSans", fontSize: 17.5, fontWeight: FontWeight.w700, color: Colors.black.withOpacity(.5)),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: outlineBorder(),
          focusedBorder: outlineBorder(),
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        style: TextStyle(
          fontFamily: "NunitoSans",
          fontSize: 17.5,
          fontWeight: FontWeight.w700,
          color: Colors.black.withOpacity(.5),
        ),
        controller: _emailController,
      ),
    );
  }

  BoxDecoration buildNeumorphicTextField() {
    return BoxDecoration(
        color: Color(0xFFEFF1F3),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
              blurRadius: 5.0,
              offset: Offset(-3, -3),
              color: Colors.white.withOpacity(.7)
          ),
          BoxShadow(
              blurRadius: 5.0,
              offset: Offset(3, 3),
              color: Colors.black.withOpacity(.15)
          )
        ]
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: backgroundColor),
      gapPadding: 10,
    );
  }
}


import 'package:app/components/already_have_an_Account.dart';
import 'package:app/components/roundedInputField.dart';
import 'package:app/components/roundedPasswordField.dart';
import 'package:app/components/rounded_button.dart';
import 'package:app/constants.dart';
import 'package:app/screens/login/login_screen.dart';
import 'package:app/screens/signIn/components/backgroundSingUp_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodySignInPage extends StatelessWidget {
  const BodySignInPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundSignUpScreen(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: 'userID@domain.com',
              icon: Icons.person,
              onChanged: (String value) {},
            ),
            RoundedPasswordField(
              hintText: 'Password',
              icon: Icons.lock,
              suffixIcon: Icons.visibility,
              onChanged: (String value) {},
            ),
            RoundedButton(
              size: size,
              text: "Sign Up",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:app/components/already_have_an_Account.dart';
import 'package:app/components/roundedInputField.dart';
import 'package:app/components/roundedPasswordField.dart';
import 'package:app/components/rounded_button.dart';
import 'package:app/constants.dart';
import 'package:app/screens/login/components/background-login.dart';
import 'package:app/screens/signIn/signIn_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyLoginPage extends StatelessWidget {
  const BodyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundLoginScreen(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: 'UserID@domain.com',
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
              text: "Login",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignInPage();
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

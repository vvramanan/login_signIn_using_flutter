import 'package:app/screens/signIn/components/bodySignUp_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodySignInPage(),
    );
  }
}

import 'package:flutter/material.dart';

import 'components/body.dart';

class SignInScren extends StatelessWidget {
  static String routeName = "/sign_in";

  const SignInScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
        ),
      ),
      body: const Body(),
    );
  }
}

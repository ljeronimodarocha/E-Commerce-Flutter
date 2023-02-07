import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset("assets/images/success.png",
              height: SizeConfig.screenHeight * 0.4),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            'Login Success',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: 'Back to home',
              press: () =>
                  Navigator.of(context).pushNamed(HomeScreen.routeName),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

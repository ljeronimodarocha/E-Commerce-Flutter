import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              const Text(
                  'Complete your details or continue \nwith social media'),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              const CompleteProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}

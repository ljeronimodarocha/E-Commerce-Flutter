import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({super.key});

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? ping2FocusNde;
  FocusNode? ping3FocusNde;
  FocusNode? ping4FocusNde;

  @override
  void initState() {
    super.initState();
    ping2FocusNde = FocusNode();
    ping3FocusNde = FocusNode();
    ping4FocusNde = FocusNode();
  }

  @override
  void dispose() {
    ping2FocusNde!.dispose();
    ping3FocusNde!.dispose();
    ping4FocusNde!.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                keyboardType: TextInputType.number,
                autofocus: true,
                obscureText: true,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: ping2FocusNde!);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                keyboardType: TextInputType.number,
                focusNode: ping2FocusNde,
                obscureText: true,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: ping3FocusNde!);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                keyboardType: TextInputType.number,
                focusNode: ping3FocusNde,
                obscureText: true,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: ping4FocusNde!);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                keyboardType: TextInputType.number,
                focusNode: ping4FocusNde,
                obscureText: true,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
                decoration: otpInputDecoration,
                onChanged: (value) {
                  ping4FocusNde!.unfocus();
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.15,
        ),
        DefaultButton(text: 'Continue', press: () {}),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:loopday_day_app/homeworks/temperature.dart';
import 'package:loopday_day_app/screens/onboarding/onboarding.dart';

void main(List<String> args) {
  runApp(const MainRunner());
}

class MainRunner extends StatelessWidget {
  const MainRunner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstOnboarding(),
    );
  }
}

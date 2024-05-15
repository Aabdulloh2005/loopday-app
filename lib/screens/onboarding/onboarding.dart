import 'package:flutter/material.dart';
import 'package:loopday_day_app/screens/onboarding/three_pages.dart';

class FirstOnboarding extends StatefulWidget {
  const FirstOnboarding({super.key});

  @override
  State<FirstOnboarding> createState() => _FirstOnboardingState();
}

class _FirstOnboardingState extends State<FirstOnboarding> {
  @override
  void initState() {
    super.initState();
    _loadNextPage();
  }

  void _loadNextPage() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const ThreeOnboardings(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Container(
            width: width - 60,
            height: width - 60,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20,
                      blurStyle: BlurStyle.outer)
                ],
                borderRadius: BorderRadius.circular(200),
                border: Border.all(color: Colors.grey.shade300)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQZF3eQqvImgyZWcPtdZ8GIlKSpCmKYFDlHsCpCQCn5WLfSotLv",
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const Text(
                  "Loopday App",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

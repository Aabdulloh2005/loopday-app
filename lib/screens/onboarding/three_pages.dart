import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loopday_day_app/screens/signing/account_page.dart';
import 'package:loopday_day_app/screens/onboarding/widget_onboarding.dart';

class ThreeOnboardings extends StatefulWidget {
  const ThreeOnboardings({super.key});

  @override
  State<ThreeOnboardings> createState() => _ThreeOnboardingsState();
}

class _ThreeOnboardingsState extends State<ThreeOnboardings> {
  PageController _controller = PageController();
  int _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 10,
            child: PageView(
              controller: _controller,
              onPageChanged: (int index) {
                _currentPageIndex = index;
                setState(() {});
                print(_currentPageIndex);
              },
              children: [
                WidgetOnboarding(index: 0),
                WidgetOnboarding(index: 1),
                WidgetOnboarding(index: 2),
              ],
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () {
                _currentPageIndex != 2
                    ? _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInCubic)
                    : Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AccountPage(),
                        ),
                      );
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 60),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff4155FA)),
                width: double.infinity,
                height: 50,
                child: Text(
                  _currentPageIndex == 2 ? "Get Started" : "Next",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

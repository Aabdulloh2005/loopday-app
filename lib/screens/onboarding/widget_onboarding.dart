import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class WidgetOnboarding extends StatelessWidget {
  final int index;

  WidgetOnboarding({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90, bottom: 10, left: 20, right: 20),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 380,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/img$index.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        height: 7,
                        width: index == 0 ? 30 : 7,
                        decoration: BoxDecoration(
                          color: const Color(0xff4155FA),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const Gap(5),
                    InkWell(
                      child: Container(
                        height: 7,
                        width: index == 1 ? 30 : 7,
                        decoration: BoxDecoration(
                          color: const Color(0xff4155FA),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const Gap(5),
                    InkWell(
                      child: Container(
                        height: 7,
                        width: index == 2 ? 30 : 7,
                        decoration: BoxDecoration(
                          color: const Color(0xff4155FA),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Set Your Schedule",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  ),
                  Gap(20),
                  Text(
                    "Quickly see your upcoming event, task, conference calls, weather, and more",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

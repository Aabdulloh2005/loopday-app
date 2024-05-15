import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loopday_day_app/screens/signing/register_page.dart';
import 'package:loopday_day_app/screens/signing/sign_in.dart';
import 'package:loopday_day_app/widgets/buttons.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60, bottom: 10, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Let's start your Schedule activity",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Gap(10),
                  const Text(
                    "Quickly see your upcoming event, task, conference calls, weather, and more",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  Container(
                    width: double.infinity,
                    height: 380,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/img0.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            GetButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const RegisterPage()),
                );
              },
              name: "Create Account",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TypeSigning(
                  index: 0,
                  name: "Apple",
                ),
                TypeSigning(
                  index: 1,
                  name: "Google",
                ),
              ],
            ),
            const Gap(10),
            Text.rich(
              TextSpan(
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade500),
                children: [
                  const TextSpan(
                    text: "You Have Account? ",
                  ),
                  WidgetSpan(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (ctx) => const LogInPage()),
                        );
                      },
                      child: const Text(
                        "Log in",
                        style: TextStyle(
                            color: Color(0xff4155FA),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

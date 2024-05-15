import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loopday_day_app/screens/signing/my_button.dart';
import 'package:loopday_day_app/screens/signing/register_page.dart';
import 'package:loopday_day_app/screens/signing/sign_in.dart';

class ChooicePage extends StatelessWidget {
  const ChooicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Gap(20.0),
              const Text(
                "Let's start your Schedule activity",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(20.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Ullamco anim aliquip ea irure sint voluptate eiusmod fugiat proident aliquip laborum.",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Gap(40.0),
              Image.network(
                "https://i.stack.imgur.com/4CeqZ.png",
              ),
              const Gap(20.0),
              MyButton(
                title: "Create accaunt",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
              ),
              const Gap(20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyLogoButton(
                    imgUrl: "https://cdn-icons-png.flaticon.com/128/0/747.png",
                    title: "Apple",
                  ),
                  MyLogoButton(
                      imgUrl:
                          "https://cdn-icons-png.flaticon.com/128/300/300221.png",
                      title: "Google")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "You have an Accaunt ?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: Color(0xff4155FA),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

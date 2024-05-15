import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GetButton extends StatelessWidget {
  String name;
  VoidCallback onPressed;
  GetButton({required this.name, required this.onPressed,  super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff4155FA)),
        width: double.infinity,
        height: 50,
        child: Text(
          name,
          style: const TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class TypeSigning extends StatelessWidget {
  final List icons = [
    "https://cdn-icons-png.flaticon.com/128/0/747.png",
    "https://cdn-icons-png.flaticon.com/128/300/300221.png",
  ];
  String name;
  int index;
  TypeSigning({required this.name, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF5F5F5)),
        width: 150,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              icons[index],
              cacheHeight: 30,
            ),
            const Gap(10),
            Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

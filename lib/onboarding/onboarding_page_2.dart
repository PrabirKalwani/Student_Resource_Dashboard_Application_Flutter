import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.network(
              'https://lottie.host/8c9aa81c-78d9-4180-be7d-9d5e1b351453/BNVUb9GwFe.json'),
          Text(
            "Finding Your Assingments ",
            style: TextStyle(color: Theme.of(context).colorScheme.background),
          )
        ]),
      ),
    );
  }
}

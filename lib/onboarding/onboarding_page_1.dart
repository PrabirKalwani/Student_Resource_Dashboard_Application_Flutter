import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.network(
              'https://lottie.host/c438ecb2-acc8-40cd-83bb-81d2c47b0e52/DQV09RJqtw.json'),
          Text(
            "Searching For Notes ?",
            style: TextStyle(color: Theme.of(context).colorScheme.background),
          )
        ]),
      ),
    );
  }
}

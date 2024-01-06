import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.network(
              'https://lottie.host/ded943e9-0b0c-4030-bc5a-1544f8b88b4e/CcHcpHRzBb.json'),
          Text(
            "All Of This in One Application",
            style: TextStyle(color: Theme.of(context).colorScheme.background),
          )
        ]),
      ),
    );
  }
}

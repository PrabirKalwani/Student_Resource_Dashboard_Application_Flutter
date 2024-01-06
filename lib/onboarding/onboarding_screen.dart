import 'package:classes_application/Home/home_page.dart';
import 'package:classes_application/onboarding/onboarding_page3.dart';
import 'package:classes_application/onboarding/onboarding_page_1.dart';
import 'package:classes_application/onboarding/onboarding_page_2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            OnboardingPage1(),
            OnboardingPage2(),
            OnboardingPage3(),
          ],
        ),
        Container(
          ///pos toward bottom
          alignment: Alignment(0, 0.75),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Text(
                  'skip',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.background),
                ),
                onTap: () {
                  _controller.jumpToPage(2);
                },
              ),
              SmoothPageIndicator(controller: _controller, count: 3),
              onLastPage
                  ? GestureDetector(
                      child: Text(
                        'done',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.background),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      },
                    )
                  : GestureDetector(
                      child: Text(
                        'next',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.background),
                      ),
                      onTap: () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      }),
            ],
          ),
        ),
      ],
    ));
  }
}

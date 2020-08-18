import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:main_widgets/screens/login_screen.dart';
import 'package:sk_onboarding_screen/flutter_onboarding.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

class OnboardingScreen extends StatefulWidget {
  static const String id = 'onboarding_screen';

  @override
  State<StatefulWidget> createState() {
    return _OnboardingScreenState();
  }
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SKOnboardingScreen(
          bgColor: Colors.white,
          themeColor: const Color(0XFFF74265),
          pages: pages,
          skipClicked: (value) {
            print('skip');
            // _globalKey.currentState.showSnackBar(SnackBar(
            //   content: Text('Skip Clicked'),
            // ));
            Navigator.pushReplacementNamed(context, LoginScreen.id);
          },
          getStartedClicked: (value) {
            Navigator.pushReplacementNamed(context, LoginScreen.id);
            _globalKey.currentState.showSnackBar(SnackBar(
              content: Text('Get Strated clicked'),
            ));
          },
        ),
      ),
    );
  }

  final pages = [
    SkOnboardingModel(
        title: 'Fisrt onboarding screen',
        description: 'Fisrt onboarding screen for test ',
        imagePath: 'assets/images/onboarding1.png',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794)),
    SkOnboardingModel(
        title: 'Second onboarding screen',
        description: 'Second onboarding screen for test ',
        imagePath: 'assets/images/onboarding2.png',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794)),
    SkOnboardingModel(
        title: '3rd onboarding screen',
        description: '3rd onboarding screen for test ',
        imagePath: 'assets/images/onboarding3.png',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794))
  ];
}

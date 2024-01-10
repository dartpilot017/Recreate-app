// ignore_for_file: library_private_types_in_public_api, no_leading_underscores_for_local_identifiers, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recreate_app/responsiveness.dart';
import 'package:recreate_app/screens/setup-screen.dart';

class AnimatedSplashScreen extends StatefulWidget {
  const AnimatedSplashScreen({super.key});

  @override
  _AnimatedSplashScreenState createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  int currentScreenIndex = 0;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.forward();

    _startSplashScreenSequence();
  }

  void _startSplashScreenSequence() {
    int totalDuration = 5;
    int currentIndex = 0;

    void _showNextScreen() {
      if (currentIndex < 4) {
        setState(() {
          currentScreenIndex = currentIndex;
        });

        _animationController.reset();
        _animationController.forward();

        Future.delayed(
          const Duration(seconds: 3),
          _showNextScreen,
        );

        currentIndex++;
      } else {
        Future.delayed(
          Duration(seconds: totalDuration),
          () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SetupScreen(),
              ),
            );
          },
        );
      }
    }

    _showNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Builder(
          builder: (context) => Scaffold(
            body: Stack(
              children: [
                Image.asset(
                  'assets/images/splash-screen-assets/splash.bg.png',
                  fit: BoxFit.fitHeight,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xE2650C01).withOpacity(0.8),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.85),
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.35),
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/splash-screen-assets/sun.vector.svg',
                                  fit: BoxFit.fitHeight,
                                  width: screenWidth * 0.1,
                                  height: screenHeight * 0.1,
                                  // ignore: deprecated_member_use
                                  color:
                                      const Color(0xFFFFD2CC).withOpacity(0.8),
                                ),
                              ],
                            ),
                          ],
                        ),
                        FadeTransition(
                          opacity: _animation,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: screenHeight * 0.06,
                                  ),
                                  SizedBox(
                                    width: screenWidth,
                                    height: screenHeight * 0.063,
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          child: (currentScreenIndex == 2 ||
                                                  currentScreenIndex == 3)
                                              ? Stack(children: [
                                                  Positioned(
                                                    left: screenWidth * 0.12,
                                                    height: screenHeight * 0.02,
                                                    child: SvgPicture.asset(
                                                        'assets/images/splash-screen-assets/Vector 332.svg'),
                                                  ),
                                                  Positioned(
                                                    left: screenWidth * 0.13,
                                                    height: screenHeight * 0.03,
                                                    child: SvgPicture.asset(
                                                      'assets/images/splash-screen-assets/speeak2.vetor.svg',
                                                      width: screenWidth * 0.03,
                                                      height:
                                                          screenHeight * 0.02,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: screenWidth * 0.12,
                                                    height:
                                                        screenHeight * 0.0384,
                                                    child: SvgPicture.asset(
                                                      'assets/images/splash-screen-assets/speak3.vector.svg',
                                                      width: screenWidth * 0.03,
                                                      height:
                                                          screenHeight * 0.034,
                                                    ),
                                                  ),
                                                ])
                                              : Container(),
                                        ),
                                        (currentScreenIndex == 0 ||
                                                currentScreenIndex == 1)
                                            ? Container(
                                                margin: EdgeInsets.only(
                                                    left: screenWidth * 0.04,
                                                    bottom:
                                                        screenHeight * 0.006),
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left:
                                                            screenWidth * 0.05,
                                                      ),
                                                      child: Text.rich(
                                                        TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: 'Speak',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    screenWidth *
                                                                        0.108,
                                                                fontFamily:
                                                                    'JosefinSans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0,
                                                                foreground:
                                                                    Paint()
                                                                      ..style =
                                                                          PaintingStyle
                                                                              .stroke
                                                                      ..strokeWidth =
                                                                          2
                                                                      ..color = (currentScreenIndex ==
                                                                              0)
                                                                          ? const Color(0xFFFF7562).withOpacity(
                                                                              0.5)
                                                                          : const Color(
                                                                              0xFFFF7562),
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: 'Sphere',
                                                              style: TextStyle(
                                                                color: (currentScreenIndex ==
                                                                        0)
                                                                    ? const Color(
                                                                            0xFFFF7562)
                                                                        .withOpacity(
                                                                            0.5)
                                                                    : const Color(
                                                                        0xFFFF7562),
                                                                fontSize:
                                                                    screenWidth *
                                                                        0.108,
                                                                fontFamily:
                                                                    'JosefinSans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left:
                                                            screenWidth * 0.05,
                                                      ),
                                                      child: Text.rich(
                                                        TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: 'Speak',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    screenWidth *
                                                                        0.108,
                                                                fontFamily:
                                                                    'JosefinSans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0,
                                                                color: (currentScreenIndex ==
                                                                        0)
                                                                    ? Colors
                                                                        .white
                                                                        .withOpacity(
                                                                            0.5)
                                                                    : Colors
                                                                        .white,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: 'Sphere',
                                                              style: TextStyle(
                                                                color: (currentScreenIndex ==
                                                                        0)
                                                                    ? const Color(
                                                                            0xFFFF7562)
                                                                        .withOpacity(
                                                                            0.5)
                                                                    : const Color(
                                                                        0xFFFF7562),
                                                                fontSize:
                                                                    screenWidth *
                                                                        0.108,
                                                                fontFamily:
                                                                    'JosefinSans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            : Center(
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left:
                                                            screenWidth * 0.05,
                                                      ),
                                                      child: Text.rich(
                                                        TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: 'Speak',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    screenWidth *
                                                                        0.108,
                                                                fontFamily:
                                                                    'JosefinSans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0,
                                                                foreground:
                                                                    Paint()
                                                                      ..style =
                                                                          PaintingStyle
                                                                              .stroke
                                                                      ..strokeWidth =
                                                                          2
                                                                      ..color = (currentScreenIndex ==
                                                                              0)
                                                                          ? const Color(0xFFFF7562).withOpacity(
                                                                              0.5)
                                                                          : const Color(
                                                                              0xFFFF7562),
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: 'Sphere',
                                                              style: TextStyle(
                                                                color: (currentScreenIndex ==
                                                                        0)
                                                                    ? const Color(
                                                                            0xFFFF7562)
                                                                        .withOpacity(
                                                                            0.5)
                                                                    : const Color(
                                                                        0xFFFF7562),
                                                                fontSize:
                                                                    screenWidth *
                                                                        0.108,
                                                                fontFamily:
                                                                    'JosefinSans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left:
                                                            screenWidth * 0.05,
                                                      ),
                                                      child: Text.rich(
                                                        TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: 'Speak',
                                                              style: TextStyle(
                                                                fontSize:
                                                                    screenWidth *
                                                                        0.108,
                                                                fontFamily:
                                                                    'JosefinSans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0,
                                                                color: (currentScreenIndex ==
                                                                        0)
                                                                    ? Colors
                                                                        .white
                                                                        .withOpacity(
                                                                            0.5)
                                                                    : Colors
                                                                        .white,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: 'Sphere',
                                                              style: TextStyle(
                                                                color: (currentScreenIndex ==
                                                                        0)
                                                                    ? const Color(
                                                                            0xFFFF7562)
                                                                        .withOpacity(
                                                                            0.5)
                                                                    : const Color(
                                                                        0xFFFF7562),
                                                                fontSize:
                                                                    screenWidth *
                                                                        0.108,
                                                                fontFamily:
                                                                    'JosefinSans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: screenWidth * 0.27,
                                      ),
                                      child: currentScreenIndex == 3
                                          ? const Text(
                                              '...speak the world',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontStyle: FontStyle.italic,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            )
                                          : Container(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.15,
                                  ),
                                  Positioned(
                                    top: screenHeight * 0.03,
                                    left: 0,
                                    right: 0,
                                    child: Expanded(
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: screenHeight * 0.009,
                                            child: SizedBox(
                                              child: Stack(
                                                children: [
                                                  SvgPicture.asset(
                                                    'assets/images/splash-screen-assets/man.vector.svg',
                                                    width: screenWidth * 0.578,
                                                    height:
                                                        screenHeight * 0.374,
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                  Positioned(
                                                    left: screenWidth * 0.391,
                                                    top: screenHeight * 0.178,
                                                    child: SvgPicture.asset(
                                                      'assets/images/splash-screen-assets/Vector 332.svg',
                                                      height:
                                                          screenHeight * 0.02,
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: screenWidth * 0.399,
                                                    top: screenHeight * 0.181,
                                                    child: (currentScreenIndex ==
                                                                2 ||
                                                            currentScreenIndex ==
                                                                3)
                                                        ? SvgPicture.asset(
                                                            'assets/images/splash-screen-assets/speeak2.vetor.svg',
                                                            height:
                                                                screenHeight *
                                                                    0.026,
                                                            fit:
                                                                BoxFit.fitWidth,
                                                          )
                                                        : Container(),
                                                  ),
                                                  Positioned(
                                                    left: screenWidth * 0.39,
                                                    top: screenHeight * 0.181,
                                                    child:
                                                        (currentScreenIndex ==
                                                                3)
                                                            ? SvgPicture.asset(
                                                                'assets/images/splash-screen-assets/speak3.vector.svg',
                                                                height:
                                                                    screenHeight *
                                                                        0.04,
                                                                fit: BoxFit
                                                                    .fitWidth,
                                                              )
                                                            : Container(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            right: screenWidth * 0.04,
                                            top: screenHeight * 0.03,
                                            child: (currentScreenIndex == 3 ||
                                                    currentScreenIndex == 2)
                                                ? SvgPicture.asset(
                                                    'assets/images/splash-screen-assets/line.vector.svg')
                                                : Container(),
                                          ),
                                          Positioned(
                                            right: screenWidth * 0.048,
                                            top: screenHeight * 0.049,
                                            child: (currentScreenIndex == 3)
                                                ? SvgPicture.asset(
                                                    'assets/images/splash-screen-assets/line.vector.svg',
                                                    width: screenWidth * 0.138,
                                                    height:
                                                        screenHeight * 0.028,
                                                  )
                                                : Container(),
                                          ),
                                          Positioned(
                                            top: screenHeight * 0.002,
                                            right: 0,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/images/splash-screen-assets/chat.vector.svg'),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: screenHeight * 0.15,
                                            child: SvgPicture.asset(
                                              'assets/images/splash-screen-assets/woman.vector.svg',
                                              width: screenWidth * 0.57,
                                              height: screenHeight * 0.36,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                  // Padding(
                                  //   padding: EdgeInsets.only(
                                  //     top: screenHeight * 0.08,
                                  //   ),
                                  //   child: Container(
                                  //     color: Colors.amber,
                                  //     he
                                  //   ),
                                  // )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class SplashScreenData {
  final int delay;

  SplashScreenData(
    this.delay,
  );
}

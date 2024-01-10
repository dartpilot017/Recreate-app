// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recreate_app/responsiveness.dart';
import 'package:recreate_app/screens/speaking-screen.dart';
import 'package:recreate_app/widgets/icon-text-progress-widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 0.02,
        right: screenWidth * 0.018,
      ),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.033,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your\nLearning Sphere',
                      style: TextStyle(
                        color: const Color(0xFF743026),
                        fontSize: screenWidth * 0.08,
                        fontFamily: 'JosefinSans',
                        fontWeight: FontWeight.w700,
                        height: screenHeight * 0.0016,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.015),
                      child: SvgPicture.asset(
                        'assets/images/icon-assets/menu-icon.svg',
                        height: screenHeight * 0.03,
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextProgressWidget(
                      imagePATH: 'assets/images/icon-assets/open-book-icon.svg',
                      text: 'Reading',
                      percentageText: '50',
                      width: 0.1973,
                    ),
                    IconTextProgressWidget(
                      imagePATH: 'assets/images/icon-assets/headphone-icon.svg',
                      text: 'Listening',
                      percentageText: '50',
                      width: 0.1973,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const IconTextProgressWidget(
                      imagePATH: 'assets/images/icon-assets/hand-icon.svg',
                      text: 'Writing',
                      percentageText: '70',
                      width: 0.2762,
                    ),
                    IconTextProgressWidget(
                      imagePATH:
                          'assets/images/icon-assets/person-speaking-icon.svg',
                      text: 'Speaking',
                      percentageText: '25',
                      width: 0.0986,
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SpeakingScreen(),
                          ),
                        )
                      },
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextProgressWidget(
                      imagePATH: 'assets/images/icon-assets/books-icon.svg',
                      text: 'Books',
                      percentageText: '80',
                      width: 0.3156,
                    ),
                    IconTextProgressWidget(
                      imagePATH: 'assets/images/icon-assets/emoji-icon.svg',
                      text: 'Quizzes',
                      percentageText: '40',
                      width: 0.1578,
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextProgressWidget(
                      imagePATH: 'assets/images/icon-assets/puzzle-icon.png',
                      text: 'Games',
                      percentageText: '90',
                      width: 0.3551,
                    ),
                    IconTextProgressWidget(
                      imagePATH: 'assets/images/icon-assets/translate-icon.png',
                      text: 'Translation',
                      percentageText: '40',
                      width: 0.1578,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

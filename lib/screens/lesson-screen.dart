// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:recreate_app/responsiveness.dart';
import 'package:recreate_app/widgets/custom-nav-button.dart';
import 'package:recreate_app/widgets/lessons-widget.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({Key? key}) : super(key: key);

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  late PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 10),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.02,
            right: screenWidth * 0.018,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.002,
                  vertical: screenHeight * 0.0001,
                ),
                width: screenWidth,
                height: screenHeight * 0.063,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x7F908989)),
                    borderRadius: BorderRadius.circular(screenWidth * 0.3),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomNavButton(
                        onPressed: () => _onItemTapped(0),
                        isSelected: _selectedIndex == 0,
                        text: 'Audio Lession',
                      ),
                    ),
                    Expanded(
                      child: CustomNavButton(
                        onPressed: () => _onItemTapped(1),
                        isSelected: _selectedIndex == 1,
                        text: 'Video Lesson',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.005,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.045,
                      ),
                      const LessonWidget(
                        imagePATH: 'assets/images/lesson-screen-assets/trip.jpeg',
                        title: 'First Trip',
                        description:
                            'Here you will listen\nto conversations between tourists,\nand learn to speak together with\nthem!',
                        colorValue: 0xffE16723,
                      ),
                      SizedBox(
                        height: screenHeight * 0.045,
                      ),
                      const LessonWidget(
                        imagePATH: 'assets/images/lesson-screen-assets/work.png',
                        description:
                            'After taking this classes, you will\nbe able to take orders from\nforeigners! ',
                        title: 'Freelance Work',
                        colorValue: 0xff908A89,
                      ),
                      SizedBox(
                        height: screenHeight * 0.045,
                      ),
                      const LessonWidget(
                        imagePATH:
                            'assets/images/lesson-screen-assets/meeting.jpeg',
                        description:
                            'You will learn to communicate\nwith your colleagues and\nunderstand them!',
                        title: 'First Meeting',
                        colorValue: 0xffca9837,
                      ),
                      SizedBox(
                        height: screenHeight * 0.045,
                      ),
                      const LessonWidget(
                        imagePATH:
                            'assets/images/lesson-screen-assets/partners.jpeg',
                        description:
                            'You will learn to communicate\nwith your colleagues and\nunderstand them!',
                        title: 'Meting With Partners',
                        colorValue: 0xff000000,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

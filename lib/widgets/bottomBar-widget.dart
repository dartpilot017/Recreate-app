// ignore_for_file: deprecated_member_use, use_full_hex_values_for_flutter_colors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recreate_app/responsiveness.dart';
import 'package:recreate_app/screens/comingsoon-screen.dart';
import 'package:recreate_app/screens/home-screen.dart';
import 'package:recreate_app/screens/lesson-screen.dart';
import 'package:recreate_app/widgets/app-bar-widget.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
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
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.05,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: AppBarWidget(),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: HomeScreen(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: screenHeight * 0.01,
                left: 7,
                right: 7,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.06,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Center(
                            child: AppBarWidget(
                              showCircleAvatar: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: LessonScreen(),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
              child: const Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: ComingSoonScreen(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
              child: const Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: ComingSoonScreen(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
              child: const Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: ComingSoonScreen(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        enableFeedback: false,
        selectedItemColor: const Color(0xffFF650C01),
        unselectedItemColor: const Color(0xFF908989),
        backgroundColor: const Color(0xffDEDECE),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          _buildBottomNavigationBarItem(
              'assets/images/icon-assets/home-icon.svg', 'Home', 0),
          _buildBottomNavigationBarItem(
              'assets/images/icon-assets/lesson-icon.svg', 'Lesson', 1),
          _buildBottomNavigationBarItem(
              'assets/images/icon-assets/exercises-icon.svg', 'Exercises', 2),
          _buildBottomNavigationBarItem(
              'assets/images/icon-assets/game-icon.svg', 'Games', 3),
          _buildBottomNavigationBarItem(
              'assets/images/icon-assets/chat-icon.svg', 'Chats', 4),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
    String iconPath,
    String label,
    double index,
  ) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          Container(
            width: screenWidth * 0.09,
            height: screenHeight * 0.005,
            decoration: ShapeDecoration(
              color: _selectedIndex == index
                  ? const Color(0xFF650C01)
                  : Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(screenWidth * 0.03),
                  bottomRight: Radius.circular(screenWidth * 0.03),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.007,
          ),
          SvgPicture.asset(
            iconPath,
            color: _selectedIndex == index
                ? const Color(0xffff650c01)
                : const Color(0xFF908989),
            width: _selectedIndex == index
                ? screenWidth * 0.2
                : screenWidth * 0.03,
            height: screenHeight * 0.025,
          ),
        ],
      ),
      label: label,
    );
  }
}

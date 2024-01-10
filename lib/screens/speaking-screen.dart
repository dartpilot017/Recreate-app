// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recreate_app/responsiveness.dart';
import 'package:recreate_app/widgets/bottomBar-widget.dart';
import 'package:recreate_app/widgets/custom-button.dart';
import 'package:recreate_app/widgets/progress-widget.dart';

class SpeakingScreen extends StatelessWidget {
  const SpeakingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.05,
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 3,
        title: Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.016),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  height: 30,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.002,
                    ),
                    child: Icon(
                      CupertinoIcons.back,
                      size: screenHeight * 0.027,
                    ),
                  ),
                ),
              ),
              ProgressWidget(
                width1: 0.65,
                width: screenWidth * 0.91,
              ),
            ],
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.04,
            right: screenWidth * 0.04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: screenHeight * 0.017,
                  ),
                  Text(
                    'Speak this sentence',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: const Color(0xFF616161),
                      fontSize: screenWidth * 0.05,
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.037,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: screenWidth * 0.04,
                        backgroundColor: const Color(0xff650c01),
                        child: SvgPicture.asset(
                            'assets/images/icon-assets/speaker-icon.svg'),
                      ),
                      SizedBox(
                        height: screenHeight * 0.039,
                      ),
                      Text(
                        'Bonjour, Buchi, enchante',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF616161),
                          fontSize: screenWidth * 0.05,
                          fontFamily: 'JosefinSans',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/icon-assets/pod-mic-icon.svg',
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Brilliant!',
                          style: TextStyle(
                            color: const Color(0xFF616161),
                            fontSize: screenWidth * 0.05,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.027,
                        ),
                        Text(
                          'Meaning:',
                          style: TextStyle(
                            color: const Color(0xFF616161),
                            fontSize: screenWidth * 0.041,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.027,
                        ),
                        Text(
                          'Hello, Buchi, nice to meet you.',
                          style: TextStyle(
                            color: const Color(0xFF616161),
                            fontSize: screenWidth * 0.041,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.036,
                        )
                      ],
                    ),
                  ),
                  CustomButton(
                    textColor: Colors.white,
                    onPressed: () => {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomBarWidget(),
                        ),
                      ),
                    },
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

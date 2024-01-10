// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recreate_app/responsiveness.dart';
import 'package:recreate_app/widgets/bottomBar-widget.dart';
import 'package:recreate_app/widgets/custom-button.dart';

class StreaksScreen extends StatelessWidget {
  const StreaksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.06,
              right: screenWidth * 0.06,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/images/splash-screen-assets/speak.vector.svg',
                      ),
                      Text(
                        '2',
                        style: TextStyle(
                            color: const Color(0xFF650C01),
                            fontSize: screenWidth * 0.35,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w500,
                            height: 0),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'days streak!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.068,
                        fontFamily: 'JosefinSans',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.013,
                    ),
                    Container(
                      height: screenHeight * 0.04,
                      padding: EdgeInsets.only(
                        bottom: screenHeight * 0.009,
                      ),
                      child: SvgPicture.asset(
                        'assets/images/icon-assets/streak-icon.svg',
                        height: screenHeight * 0.023,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.06,
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.2,
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextIconColumn(
                            text: 'Mon',
                            color: Color(0xFF650C01),
                          ),
                          TextIconColumn(
                            text: 'Tue',
                            color: Color(0xFF650C01),
                          ),
                          TextIconColumn(
                            text: 'Wed',
                          ),
                          TextIconColumn(
                            text: 'Thu',
                          ),
                          TextIconColumn(
                            text: 'Fri',
                          ),
                          TextIconColumn(
                            text: 'Sat',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      Text(
                        'You’re on a roll, great job! Practice each day to keep up with your streak and earn XP points.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.800000011920929),
                          fontSize: screenWidth * 0.03,
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          // height: 0.10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.15,
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
                  height: screenHeight * 0.01,
                ),
                const CustomButton(
                  backgrooundColor: Colors.transparent,
                  text: 'Share',
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextIconColumn extends StatelessWidget {
  final String text;
  final Color? color;

  const TextIconColumn({Key? key, required this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: color ??
                const Color(0xFF908989),
            fontSize: 20,
            fontFamily: 'Josefin Sans',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        SvgPicture.asset(
          'assets/images/splash-screen-assets/speak.vector.svg',
          height: screenHeight * 0.03,
          color: color,
        ),
      ],
    );
  }
}

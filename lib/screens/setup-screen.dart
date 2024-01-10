// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recreate_app/responsiveness.dart';
import 'package:recreate_app/widgets/bottomBar-widget.dart';
import 'package:recreate_app/widgets/custom-button.dart';
import 'package:recreate_app/widgets/interest-button.dart';
import 'package:recreate_app/widgets/progress-widget.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({Key? key}) : super(key: key);

  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  double _progressPercentage = 0.0;
  int selectedCount = 0;
  List<bool> isSelectedList = List.generate(30, (index) => false);
  final int maxButtons = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                right: screenWidth * 0.01,
                left: screenWidth * 0.01,
                top: screenHeight * 0.01,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.back,
                        size: screenWidth * 0.05,
                      ),
                      SizedBox(
                        width: screenWidth * 0.01,
                      ),
                      Expanded(
                        child: ProgressWidget(
                          width1: _progressPercentage,
                          width: screenWidth * 0.84,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: '$selectedCount'),
                            TextSpan(text: '/$maxButtons'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25.0,
                      right: 7.0,
                      left: 7.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 65,
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'What interests you?',
                                style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                'Select all that applies',
                                style: TextStyle(
                                  color: Color(0xFF908989),
                                  fontSize: 13,
                                  fontFamily: 'JosefinSans',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                InterestButton(
                                  onPressed: () => updateSelectedCount(0),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[0],
                                  text: 'Studies',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(1),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[1],
                                  text: 'Reading',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(2),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[2],
                                  text: 'Technologies',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(3),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[3],
                                  text: 'Travel',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.016,
                            ),
                            Row(
                              children: [
                                InterestButton(
                                  onPressed: () => updateSelectedCount(4),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[4],
                                  text: 'Psychology',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(5),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[5],
                                  text: 'Gaming',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(6),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[6],
                                  text: 'TV/Movies',
                                ),
                                const SizedBox(
                                  width: 60,
                                )
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.016,
                            ),
                            Row(
                              children: [
                                InterestButton(
                                  onPressed: () => updateSelectedCount(7),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[7],
                                  text: 'Sports',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(8),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[8],
                                  text: 'Languages',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(9),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[9],
                                  text: 'Fashion',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(10),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[10],
                                  text: 'Fitness',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.016,
                            ),
                            Row(
                              children: [
                                InterestButton(
                                  onPressed: () => updateSelectedCount(11),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[11],
                                  text: 'Pets',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(12),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[12],
                                  text: 'Food',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(13),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[13],
                                  text: 'Climate Change',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(14),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[14],
                                  text: 'Self-care',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.016,
                            ),
                            Row(
                              children: [
                                InterestButton(
                                  onPressed: () => updateSelectedCount(15),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[15],
                                  text: 'Work life',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(16),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[16],
                                  text: 'Culture',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(17),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[17],
                                  text: 'Design',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(18),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[18],
                                  text: 'Sociology',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.016,
                            ),
                            Row(
                              children: [
                                InterestButton(
                                  onPressed: () => updateSelectedCount(19),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[19],
                                  text: 'Music',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(20),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[20],
                                  text: 'Outdoor',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(21),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[21],
                                  text: 'Networking',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(22),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[22],
                                  text: 'Romance',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.016,
                            ),
                            Row(
                              children: [
                                InterestButton(
                                  onPressed: () => updateSelectedCount(23),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[23],
                                  text: 'Shopping',
                                ),
                                SizedBox(
                                  width: screenWidth * 0.03,
                                ),
                                InterestButton(
                                  onPressed: () => updateSelectedCount(24),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[24],
                                  text: 'Sight-seeing',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.016,
                            ),
                            Row(
                              children: [
                                InterestButton(
                                  onPressed: () => updateSelectedCount(27),
                                  isActive: selectedCount < maxButtons,
                                  isSelected: isSelectedList[27],
                                  text: 'Add other +',
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.2,
                        ),
                        CustomButton(
                          textColor: Colors.white,
                          onPressed: selectedCount == maxButtons
                              ? () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const BottomBarWidget(),
                                    ),
                                  );
                                }
                              : null,
                          backgrooundColor: selectedCount == maxButtons
                              ? const Color(0xE2650C01)
                              : const Color(0xE2650C01).withOpacity(0.5),
                        ),
                        SizedBox(
                          height: screenHeight * 0.006,
                        ),
                        CustomButton(
                          backgrooundColor: Colors.transparent,
                          text: 'Skip for now',
                          onPressed: () => {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BottomBarWidget(),
                              ),
                            ),
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateSelectedCount(int index) {
    setState(() {
      if (isSelectedList[index] && selectedCount > 0) {
        isSelectedList[index] = false;
        selectedCount -= 1;
      } else if (!isSelectedList[index] && selectedCount < maxButtons) {
        isSelectedList[index] = true;
        selectedCount += 1;
      }

      _progressPercentage = (selectedCount / maxButtons).clamp(0.0, 1.0);
    });
  }
}

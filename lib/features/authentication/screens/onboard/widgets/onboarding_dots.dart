import 'package:flutter_application_1/features/authentication/controllers/onboarding_controllers.dart';
import 'package:flutter_application_1/utils/constants/colors.dart';
import 'package:flutter_application_1/utils/constants/sizes.dart';
import 'package:flutter_application_1/utils/device/device_utlity.dart';
import 'package:flutter_application_1/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingDots extends StatelessWidget {
  const OnBoardingDots({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = OnBoardController.instance;
    final dark = BHelperFunctions.isDarkMode(context);
    return Positioned(
            bottom: BDeviceUtils.getBottomNavigationBarHeight()+25,
            left: BSizes.defaultSpace,
            child: SmoothPageIndicator(
              count: 3,
              controller: controller.pageController,
              onDotClicked: controller.dotNavigationClick,
              effect: ExpandingDotsEffect(activeDotColor: dark ?BColors.light: BColors.dark, dotHeight: 6)
            ),
          );
  }
}
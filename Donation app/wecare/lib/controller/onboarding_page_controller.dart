import 'package:flutter/widgets.dart';
import '../models/onboarding_page.dart';
import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:wecare/screens/homepage.dart';

class OnboardingPageController extends GetxController {
  var currentPageIndex = 0.obs;
  bool get isLastSlide => currentPageIndex.value == onboardingPages.length - 1;
  var onboardingController = PageController();

  List<OnboardingPage> onboardingPages = [
    OnboardingPage("assets/image_3.jpg", "Find your cause",
        "Discover the causes that you are interested in."),
    OnboardingPage("assets/image_2.jpg", "Everyone can help someone",
        "Help us with your valuable donations for life saving support and services to people in critical medical situations."),
    OnboardingPage("assets/image_1.jpg", "Share to your friends & family",
        "Share the word on social media to magnify the impact. "),
  ];

  forwardAction() {
    // controls the page view when the next button is pressed..
    if (isLastSlide) {
      Get.to(HomePage());
    } else if (onboardingController.position.haveDimensions) {
      onboardingController.nextPage(
          duration: 300.milliseconds, curve: Curves.ease);
    }
  }
}

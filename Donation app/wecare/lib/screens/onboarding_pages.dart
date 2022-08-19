import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:sizer/sizer.dart';
import '../controller/onboarding_page_controller.dart';
import './homepage.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _controller = OnboardingPageController(); // calling the controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: _controller
              .onboardingController, // controller for showing various onboardingPages
          onPageChanged: _controller.currentPageIndex,
          itemCount: _controller.onboardingPages.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  // child1...
                  child: ClipPath(
                    clipper: CustomClipPath(),
                    child: Container(
                      height: 500.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              _controller.onboardingPages[index].imageFile),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  // child2...
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(_controller.onboardingPages[index].title,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 23.sp)),
                ),
                const SizedBox(height: 20),
                Padding(
                  // child3...
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(_controller.onboardingPages[index].description,
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 13.sp)),
                ),
                Padding(
                  // child4...
                  padding: const EdgeInsets.fromLTRB(150, 50, 0, 50),
                  child: Wrap(
                    spacing: 20,
                    children: List.generate(
                      _controller.onboardingPages.length,
                      (index) => Obx(() {
                        // updating the ui to listen for the change in page index
                        return Container(
                          height: 8.sp,
                          width: 8.sp,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _controller.currentPageIndex.value ==
                                      index // changing the state of the dots to indicate which page we are the on..
                                  ? Colors.deepPurple
                                  : Colors.purple.withOpacity(0.5)),
                        );
                      }),
                    ),
                  ),
                ),
                Padding(
                  // child5...
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 40),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(HomePage());
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 10.sp),
                          ),
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.deepPurple,
                          elevation: 0,
                          onPressed: _controller.forwardAction,
                          child: Text(
                            "Next",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 7.sp),
                          ),
                        )
                      ]),
                )
              ],
            );
          }),
    );
  }
}

// custom class for wave shape of the onboardingPages
class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.lineTo(0, h - 100);
    path.quadraticBezierTo(w / 4, h - 50, w / 2, h - 100);
    path.quadraticBezierTo(w - (w / 4), h - 150, w, h - 100);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:wecare/models/side_navigation.dart';

class SideNavController extends GetxController {
  var sideNavigation = ScrollController();


  List<Profile> profileInfos = [
    Profile('assets/profile_image.jpg', "Lucile Brown", "lucile@gmail.com")
  ];

  List<SideNavItems> items = [
    SideNavItems("My Donations",  const Icon(Icons.arrow_forward_ios, size:15)),
    SideNavItems("Payments",  const Icon(Icons.arrow_forward_ios, size:15)),
    SideNavItems("Settings",  const Icon(Icons.arrow_forward_ios, size:15)),
    SideNavItems("Invite",  const Icon(Icons.arrow_forward_ios, size:15)),
    SideNavItems("About Us",  const Icon(Icons.arrow_forward_ios, size:15)),
    SideNavItems("Contact Us",  const Icon(Icons.arrow_forward_ios, size:15)),
    SideNavItems("Help & FAQs",  const Icon(Icons.arrow_forward_ios, size:15)),
    SideNavItems("Terms & Services",  const Icon(Icons.arrow_forward_ios, size:15))
  ];
}

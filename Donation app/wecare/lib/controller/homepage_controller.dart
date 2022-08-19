import '../models/homepage_model.dart';
import 'package:flutter/material.dart';

class CategoryListController {
  var homepageController = PageController();
  List<CategoryList> categories = [
    CategoryList("All", const Icon(Icons.grid_4x4, color: Colors.black),
        Colors.purple[100]),
    CategoryList("Babies", const Icon(Icons.child_care, color: Colors.black),
        Colors.cyan[100]),
    CategoryList(
        "Children",
        const Icon(Icons.family_restroom, color: Colors.black),
        Colors.pink[100]),
    CategoryList("Elderly", const Icon(Icons.elderly, color: Colors.black),
        Colors.teal[100]),
  ];
}

class BottonNavController {
  List<BottomNavLIST> itemList = [
    BottomNavLIST("Home", const Icon(Icons.home, color: Colors.purple)),
    BottomNavLIST("Saved",
        const Icon(Icons.favorite_outline_outlined, color: Colors.purple)),
    BottomNavLIST("Messages",
        const Icon(Icons.messenger_outline_outlined, color: Colors.purple)),
    BottomNavLIST(
        "Profile", const Icon(Icons.person_outlined, color: Colors.purple))
  ];
}

class CausesController {
  List<CausesList> causes = [];
}

// ignore_for_file: prefer_typing_uninitialized_variables

class CategoryList {
  final title;
  final icon;
  final color;

  CategoryList(this.title, this.icon, this.color);
}

class BottomNavLIST {
  final label;
  final icon;

  BottomNavLIST(this.label, this.icon);
}

class CausesList {
  final categoryName;
  final image;
  final title;
  final description;
  final amountRaised;
  final targetAmount;
  final deadline;
  final peopleDonated;
  final liked;

  CausesList(
      this.image,
      this.title,
      this.description,
      this.amountRaised,
      this.targetAmount,
      this.deadline,
      this.peopleDonated,
      this.liked,
      this.categoryName);
}

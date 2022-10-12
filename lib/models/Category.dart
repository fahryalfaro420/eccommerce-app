import 'package:flutter/cupertino.dart';
import 'package:stylish/l10n/localization.dart';

class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> get_demo_categories(BuildContext context) {
  return [
    Category(
      icon: "assets/icons/dress.svg",
      title: Localization.of(context)!.dress,
    ),
    Category(
      icon: "assets/icons/shirt.svg",
      title: Localization.of(context)!.shirt,
    ),
    Category(
      icon: "assets/icons/pants.svg",
      title: Localization.of(context)!.pants,
    ),
    Category(
      icon: "assets/icons/Tshirt.svg",
      title: Localization.of(context)!.tshirt,
    ),
  ];
}

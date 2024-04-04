// ignore_for_file: public_member_api_docs, sort_constructors_first
class Food {
  final String name;   //cheese burger
  final String description; // full burger
  final String imagePath;  //lib/images/burger.png
  final double price;  //4.99
  final FoodCategory category; //burger
  List<Addons> availableAddons; // extra cheese, sauce

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}
//category
enum FoodCategory
{
  burger,
  salads,
  sides,
  desserts,
  drinks
}
//addons
class Addons {
  String name;
  double price;

  Addons({
    required this.name,
    required this.price,
  });
}


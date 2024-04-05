import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [
    Food(name: "Classic Burgerr", 
    description: "Juicy Beef burger",
    imagePath: 'lib/images/burger.jpeg',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Extra chees", price: 1.99),
      Addons(name: "Bacon", price: 0.50)
    ],
    ),
     Food(name: "Grilled Burgerr", 
    description: "Juicy Beef burger",
    imagePath: 'lib/images/burger.jpeg',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Extra chees", price: 1.99),
      Addons(name: "Bacon", price: 0.50)
    ],
    ),
     Food(name: "Cheese Burgerr", 
    description: "Juicy Beef burger",
    imagePath: 'lib/images/burger.jpeg',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Extra chees", price: 1.99),
      Addons(name: "Bacon", price: 0.50)
    ],
    ),

     Food(name: "Ceaser Salad", 
    description: "Crisp romaine",
    imagePath: 'lib/images/salads',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Grilled Chicken", price: 1.99),
      Addons(name: "Extra parmesan", price: 0.50)
    ],
    ),
     Food(name: "Ceaser Salad", 
    description: "Crisp romaine",
    imagePath: 'lib/images/salads',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Grilled Chicken", price: 1.99),
      Addons(name: "Extra parmesan", price: 0.50)
    ],
    ),
    Food(name: "Ceaser Salad", 
    description: "Crisp romaine",
    imagePath: 'lib/images/salads',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Grilled Chicken", price: 1.99),
      Addons(name: "Extra parmesan", price: 0.50)
    ],
    ),
   Food(name: "Onions Rings", 
    description: "Golden and Crisp onions ",
    imagePath: 'lib/images/sides.jpeg',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Ranch Dip", price: 1.99),
      Addons(name: "Spicy Mayo", price: 0.50)
    ],
    ),
    Food(name: "Onions Rings", 
    description: "Golden and Crisp onions ",
    imagePath: 'lib/images/sides.jpeg',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Ranch Dip", price: 1.99),
      Addons(name: "Spicy Mayo", price: 0.50)
    ],
    ),
    Food(name: "Onions Rings", 
    description: "Golden and Crisp onions ",
    imagePath: 'lib/images/sides.jpeg',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Ranch Dip", price: 1.99),
      Addons(name: "Spicy Mayo", price: 0.50)
    ],
    ),
    Food(name: "Red Velvet", 
    description: "Goey Chocolate lava center ",
    imagePath: 'lib/images/desserts.jpeg',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Raspberry", price: 1.99),
      Addons(name: "Chocolate Sprinkles", price: 0.50)
    ],
    ),
     Food(name: "Red Velvet", 
    description: "Goey Chocolate lava center ",
    imagePath: 'lib/images/desserts.jpeg',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Raspberry", price: 1.99),
      Addons(name: "Chocolate Sprinkles", price: 0.50)
    ],
    ),
     Food(name: "Red Velvet", 
    description: "Goey Chocolate lava center ",
    imagePath: 'lib/images/desserts.jpeg',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Raspberry", price: 1.99),
      Addons(name: "Chocolate Sprinkles", price: 0.50)
    ],
    ),
     Food(name: "Lemonade", 
    description: "Refreshing lemonade with a touch of sweetness ",
    imagePath: 'lib/images/drinks.jpeg',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Mint leaves", price: 1.99),
      Addons(name: "Strawberry flavor", price: 0.50)
    ],
    ),
    Food(name: "Lemonade", 
    description: "Refreshing lemonade with a touch of sweetness ",
    imagePath: 'lib/images/drinks.jpeg',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Mint leaves", price: 1.99),
      Addons(name: "Strawberry flavor", price: 0.50)
    ],
    ),
    Food(name: "Lemonade", 
    description: "Refreshing lemonade with a touch of sweetness ",
    imagePath: 'lib/images/drinks.jpeg',
    price: 0.99,
    category: FoodCategory.burger,
    availableAddons: [
      Addons(name: "Mint leaves", price: 1.99),
      Addons(name: "Strawberry flavor", price: 0.50)
    ],
    )
  ];

  //Getters
  List<Food> get menu => _menu;
  //OPERATIONS
  //add to cart
  //remove to cart
  //get total price of cart
  //get total number of items in a cart
  //clear cart
  //HELPERS
  //generate a reciept
  //formar double value into money
  //format list of addons into string summary
}
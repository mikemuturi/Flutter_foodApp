import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/components/my_current_location.dart';
import 'package:food_app/components/my_description_box.dart';
import 'package:food_app/components/my_drawer.dart';
import 'package:food_app/components/my_sliver_app_bar.dart';
import 'package:food_app/components/my_tab_bar.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:provider/provider.dart';
// import 'package:food_app/components/my_tab_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
  //sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory, Category, List<Food> fullMenu){
    return fullMenu.where((Food) => Food.category == Category).toList();
  }
  //return list of foods in a given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu){
    return FoodCategory.values.map((Category) {
      List<Food> categoryMenu = _filterMenuByCategory(FoodCategory, Category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categoryMenu[index].name),
          );
        });
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) =>[
         MySliverAppBar(
       title: MyTabBar(tabController: _tabController),
       child:  const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Divider(
        indent: 25,
        endIndent: 25,
        // color: Colors.grey.shade100,
      ),
      //my current location
      MyCurrentLocation(),
      //description box 
      MyDescriptionBox(),
       ],
       ),
      
      ),
        ], 
       body: Consumer<Restaurant>(
        builder:(context, restaurant, child) => TabBarView(
          controller: _tabController,
          children: getFoodInThisCategory(restaurant.menu),
          )
      )
        ),
    );
    
  }
}
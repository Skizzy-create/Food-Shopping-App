import 'package:flutter/material.dart';
import 'package:trial/util/burger_tile.dart';

class BurgerTab extends StatelessWidget {

  // list of burgers
  List burgerOnSale = [
    // [BurgerType, burgerPrice, burgerColour, imageName]
    ["Cheese Burger", "39", Colors.blue, "Assets/images/Burger.png"],
    ["Big Mac", "45", Colors.red, "Assets/images/Big Mac.png"],
    ["Burger Meal", "67", Colors.purple, "Assets/images/Burger Meal.png"],
    ["Family Meal", "99", Colors.brown, "Assets/images/burger3combo.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // number of objects in a row
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (BuildContext context, int index) {
        return BurgerTile(
          burgerType: burgerOnSale[index][0],
          burgerPrice: burgerOnSale[index][1],
          burgerColour: burgerOnSale[index][2],
          imageName: burgerOnSale[index][3],
        );
      },
    );
  }
}
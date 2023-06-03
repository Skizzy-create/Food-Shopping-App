import 'package:flutter/material.dart';
import 'package:trial/util/donut_tile.dart';

class DonutTab extends StatelessWidget {

  // list of donuts
  List donutOnSale = [
    // [donutFlavour, donutPrice, donutColour, imageName]
    ["Ice Cream", "36", Colors.blue, "Assets/images/Donuts/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "Assets/images/Donuts/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "Assets/images/Donuts/grape_donut.png"],
    ["Chocolate", "95", Colors.brown, "Assets/images/Donuts/chocolate_donut.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // number of objects in a row
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (BuildContext context, int index) {
        return DonutTile(
          donutFlavour: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColour: donutOnSale[index][2],
          imageName: donutOnSale[index][3],
        );
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:trial/util/pancake_tile.dart';

class PancakeTab extends StatelessWidget {

  // List Pancakes On Sale
  List pancakeOnSale = [
    // [pancakeFlavour, pancakePrice, pancakeColour, imageName]
    ["Classic", "49", Colors.blue, "Assets//images//Pancakes//Regular_pancakes.png"],
    ["Peach", "59", Colors.red, "Assets//images//Pancakes//Regular_pancakes.png"],
    ["Strawberry", "69", Colors.pink, "Assets//images//Pancakes//Regular_pancakes.png"],
    ["Blueberry", "79", Colors.purple, "Assets//images//Pancakes//Blueberry_pancakes.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakeOnSale.length,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5,
      ),
      itemBuilder: (BuildContext context, int index) {
      return PancakeTile(
        pancakeFlavour: pancakeOnSale[index][0],
        pancakePrice: pancakeOnSale[index][1],
        pancakeColour: pancakeOnSale[index][2],
        imageName: pancakeOnSale[index][3],
          );
      },
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PancakeTab extends StatelessWidget {

  // List Pancakes On Sale
  List pancakeOnSale = [
    // [pancakeFlavour, pancakePrice, pancakeColour, imageName]
    ["Classic", "49", Colors.brown, "Assets/images/Regular_pancakes.png"],
    ["Peach", "59", Colors.brown, "Assets/images/Regular_pancakes.png"],
    ["Strawberry", "69", Colors.brown, "Assets/images/Regular_pancakes.png"],
    ["Blueberry", "79", Colors.brown, "Assets/images/Regular_pancakes.png"],
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
      return pancakeTile(
        pancakeFlavour: pancakeOnSale[index][0],
        panckaePrice: pancakeOnSale[index][1],
        pancakeColour: pancakeOnSale[index][2],
        imageName: pancakeOnSale[index][3],
          );
      },
    );
  }
}

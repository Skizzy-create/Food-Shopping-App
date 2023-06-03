import 'package:flutter/material.dart';

class PancakeTile extends StatelessWidget{
  final String pancakeFlavour;
  final String pancakePrice;
  final pancakeColour;
  final String imageName;
  
  final double bordeRadius = 12;
  
  const PancakeTile({Key? key, 
    required this.pancakeFlavour, 
    required this.pancakePrice,
    required this.pancakeColour, 
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pancakeColour[50],
          borderRadius: BorderRadius.circular(bordeRadius),
        ),
        child: Column(
          children: [
            // price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pancakeColour[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(bordeRadius),
                      topRight: Radius.circular(bordeRadius),
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '\$$pancakePrice',
                    style: TextStyle(
                      color: pancakeColour,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                )
              ],
            ),
            // Donut Pictures
             const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 36.0,vertical: 16.0
              ),
            ),

            //Pancakes flavour
            Text(pancakeFlavour,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
            ),
            ),
            const SizedBox(height: 4,),
            Text(
              "The Belgian Waffle Co.", style: TextStyle(color: Colors.grey[600]),
            ),

            // Like icon + add button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // like icon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  // Plus icon
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    }
}
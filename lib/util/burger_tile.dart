import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerType;
  final String burgerPrice;
  final burgerColour;
  final String imageName;

  final double borderRadius = 12;

  const BurgerTile({Key? key,
    required this.burgerType,
    required this.burgerPrice,
    required this.burgerColour,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: burgerColour[50],
            borderRadius: BorderRadius.circular(borderRadius)
        ),
        child: Column(
          children: [
            // price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: burgerColour[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),

                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '\$$burgerPrice',
                    style: TextStyle(
                      color: burgerColour[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,),
                  ),
                ),
              ],
            ),
            // donut picture
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 36.0, vertical: 16.0),
              child: Image.asset(imageName),
            ),

            // donut flavour
            Text(
              burgerType,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Kings', style: TextStyle(color: Colors.grey[600]),
            ),

            // love icon + add button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Love icon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  //plus button
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
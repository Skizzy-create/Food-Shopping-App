import 'package:flutter/material.dart';
import 'package:trial/tab/burger_tab.dart';
import 'package:trial/tab/donut_tab.dart';
import 'package:trial/tab/pancakes_tab.dart';
import 'package:trial/tab/pizza_tab.dart';
import 'package:trial/tab/smoothie_tab.dart';
import 'package:trial/util/my_tabs.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //My Tabs
  List<Widget> myTabs = [
    // donut tab
    const MyTab(
      iconPath: 'Assets/icons/donut.png',
    ),
    //burger tab
    const MyTab(
      iconPath: 'Assets/icons/burger.png',
    ),
    //smoothie tab
    const MyTab(
      iconPath: 'Assets/icons/smoothie.png',
    ),
    // pancake tab
    const MyTab(
      iconPath: 'Assets/icons/pancakes.png',
    ),
    //pizza tab
    const MyTab(
      iconPath: 'Assets/icons/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {},
              ),
            ),
            actions: [
              Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.person,
                      color: Colors.grey[800],
                      size: 36,
                    ),
                    onPressed: () {
                      // open the drawer
                    },
                  )
              )
            ],
          ),
          body: Column(
            children: [
              // i want to eat
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0,vertical: 18),
                child: Row(
                    children: const [
                      Text(
                        "I want to",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.normal
                        ),
                      ),
                      Text(
                      " EAT",
                      style: TextStyle(
                          fontSize: 32, fontWeight: FontWeight.bold
                      ),
                    ),
                    ]
                ),
              ),
              const SizedBox(height: 18,),
              // tab bar
              TabBar(tabs: myTabs),

              // tab bar view
               Expanded(
                  child: TabBarView(
                    children: [
                      // donut page
                      DonutTab(),

                      // burger page
                      BurgerTab(),

                      // smoothie page
                      SmoothieTab(),

                      //pancakes pages
                      PancakeTab(),

                      //pizza pages
                      PizzaTab(),

                    ],
                  )
              )
            ],)
      ),
    );
  }
}
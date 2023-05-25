import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main(){
  runApp(const MyApp());  // this calls the app ( runs it )
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,  // to remove the debug tag from the app
      home: const HomePage(), // calling the home_page ( this file has all the details about the page)
      theme: ThemeData(primarySwatch: Colors.pink), // to change the tab colour to pink
    );
  }
}

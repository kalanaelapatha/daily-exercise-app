import 'package:daily_exercise_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cario",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //This gonna give us a total width and height of our device!!!
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            //accourding to the design height of the contaier should be 45% of total height
            height: size.height * .45,
            decoration: BoxDecoration(
                color: Color(0xFFF5CEBB),
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image:
                        AssetImage("assets/images/undraw_pilates_gpdb.png"))),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Color(0xFFF2BEA1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/menu.svg"),
                  ),
                ),
                Text(
                  "Good morning \n Malabe!!!",
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.0)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search here..",
                      icon: SvgPicture.asset("assets/icons/search.svg"),
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:practice/dineoutPage/dineout.dart';
import 'package:practice/home/component/profile/acc.dart';
import 'package:practice/home/component/profile/edit.dart';
import 'package:practice/home/component/profile/editPage2/edit2.dart';
import 'package:practice/home/component/profile/profile.dart';
import 'package:practice/restaurant/restaurant.dart';

import 'home/component/foodPage/food.dart';
import 'home/component/menu/menu.dart';

void main()
{
  runApp(MyApp(),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => FoodScreen(),
        '/menu':(context) => burger(),
        '/food':(context) => profile(),
        '/profile':(context)=> UserProfile(),
        '/edit':(context)=> edit(),
        '/edit2':(context)=> edit2(),
        '/edit3':(context)=> edit3(),
        '/restaurant':(context)=> MoreRestaurent(),
      },
    );
  }
}

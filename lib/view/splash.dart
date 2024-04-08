import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app_ui/view/home.dart';

import 'widgets/text.dart';
// import 'package:food_app_ui/main.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    // Timer(Duration(seconds: 3), () { 
    //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
    // });
    return  Scaffold(
      appBar: AppBar(title: AppText('Quadratic Solver'),
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_left)),
      ),
      
      // drawer: Drawer(),
    );
  }
}

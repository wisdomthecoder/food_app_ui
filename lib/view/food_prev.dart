import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_app_ui/controller/sizes.dart';
import 'package:food_app_ui/data/foods.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/food.dart';
import 'widgets/text.dart';

class FoodPrev extends StatefulWidget {
  FoodPrev({required this.food, super.key});
  Food food;

  @override
  State<FoodPrev> createState() => _FoodPrevState();
}

class _FoodPrevState extends State<FoodPrev> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.keyboard_arrow_left)),
          centerTitle: true,
          actions: [
            Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 255, 72, 59),
            ),
            SizedBox(
              width: 10,
            ),
          ],  
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 50),
          child: FloatingActionButton.extended(
            onPressed: () {},
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.delivery_dining),
            elevation: 4,
            
            splashColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
            label: AppText(
              'Place Orders',
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                  tag: widget.food.img,
                  child: Image.asset(
                    "assets/" + widget.food.img + ".png",
                    height: height(context) / 3.5,
                  )),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Icon(Icons.remove),
                      onTap: () {
                        if (quantity != 0) quantity--;
                        setState(() {});
                      },
                    ),
                    AppText(
                      quantity.toString(),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    GestureDetector(
                      child: Icon(Icons.add),
                      onTap: () {
                        if (quantity != 0) quantity++;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          widget.food.name,
                          maxLines: 1,
                          textOverflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.money_dollar,
                              color: Colors.grey,
                              size: 15,
                            ),
                            AppText(
                              widget.food.price.toString(),
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/star (1).png',
                          width: 15,
                          colorBlendMode: BlendMode.saturation,
                        ),
                        AppText(
                          widget.food.rating.toString(),
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/flame.png',
                          width: 15,
                          colorBlendMode: BlendMode.saturation,
                        ),
                        AppText(
                          widget.food.calories.toInt().toString() + " Calories",
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        Spacer(),
                        Icon(
                          Icons.alarm,
                          size: 20,
                          color: Colors.red,
                        ),
                        AppText(
                          "20 - 30 min",
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppText(
                      'Details',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    AppText(
                      widget.food.desc,
                      fontSize: 12,
                      textAlign: TextAlign.justify,
                      maxLines: 4,
                      textOverflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ))
            ],
          ),
        )
        // drawer: Drawer(),
        );
  }
}


import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_app_ui/controller/sizes.dart';
import 'package:food_app_ui/data/foods.dart';
import 'package:food_app_ui/view/food_prev.dart';
import 'package:food_app_ui/view/profile.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        toolbarHeight: 80,
        centerTitle: true,
        title: AppText(
          'Search Food',
          fontSize: 18,
          fontWeight: FontWeight.w600,
          // ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Get.to(Profile()),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Hero(tag: 'profile',child: Image.asset('assets/profile.jpeg', width: 40,))),
          ),
          SizedBox(
            width: 10,
          )
        ],
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_left)),
      ),
      body: SizedBox(
        width: width(context),
        height: height(context),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                      width: width(context) * .80,
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Spice Food",
                            hintStyle: TextStyle(fontSize: 14),
                            prefixIcon: Icon(Icons.search),
                            fillColor: Color.fromARGB(255, 248, 248, 248),
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    child: Icon(CupertinoIcons.chart_bar_square),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: MasonryGridView.count(
                      itemCount: foods.length,
                      crossAxisCount: 2,
                      itemBuilder: (context, index) {
                        if (index != 0) {
                          return GestureDetector(
                            onTap: () => Get.to(
                                FoodPrev(
                                  food: foods[index],
                                ),
                                transition: Transition.native,
                                duration: Duration(milliseconds: 700)),
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 100,
                                            color: Color.fromARGB(
                                                255, 253, 253, 253))
                                      ]),
                                  // width: double.infinity,
                                  // height: 200,
                                  // color: Colors.red,
                                  child: Column(
                                    children: [
                                      Hero(
                                        tag: foods[index].img,
                                        child: Image.asset(
                                          "assets/" + foods[index].img + ".png",
                                          width: width(context) / 2.5,
                                        ),
                                      ),
                                      AppText(
                                        foods[index].name,
                                        maxLines: 1,
                                        textOverflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/flame.png',
                                            width: 15,
                                            colorBlendMode:
                                                BlendMode.saturation,
                                          ),
                                          AppText(
                                            foods[index]
                                                    .calories
                                                    .toInt()
                                                    .toString() +
                                                " Calories",
                                            fontSize: 10,
                                            color: Colors.red.shade600,
                                            fontWeight: FontWeight.w600,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            CupertinoIcons.money_dollar,
                                            color: Colors.grey,
                                            size: 15,
                                          ),
                                          AppText(
                                            foods[index].price.toString(),
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                          );
                        } else {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: AppText(
                              'Found\n80 Results',
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          );
                        }
                      }))
            ],
          ),
        ),
      ),
      // drawer: Drawer(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app_ui/view/tabs/account.dart';
import 'package:food_app_ui/view/tabs/payment.dart';
import 'package:food_app_ui/view/widgets/text.dart';
import 'package:get/route_manager.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.keyboard_arrow_left)),
          centerTitle: true,
          title: AppText(
            "My Profile",
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
          actions: const [
            Icon(
              Icons.edit,
              // color: Color.fromARGB(255, 255, 72, 59),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Hero(
                            tag: 'profile',
                            child: Image.asset(
                              'assets/profile.jpeg',
                              width: 80,
                            ))),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          'Wisdom Dauda',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                        AppText(
                          'codewithwise@gmail.com',
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                        AppText(
                          'User ID: 13D121A',
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TabBar(indicatorColor: Theme.of(context).primaryColor, tabs: [
                Tab(
                  text: "Account",
                ),
                Tab(
                  text: "Payment Method",
                ),
                Tab(
                  text: "History",
                ),
              ]),
              Expanded(
                child: TabBarView(children: [
                  Center(child: AccountTab()),
                  PaymentTab(),
                  Center(child: AppText('WIsdom'))
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app_ui/controller/sizes.dart';
import 'package:food_app_ui/view/widgets/text.dart';

class PaymentTab extends StatelessWidget {
  const PaymentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            color: Colors.grey.shade50,
            padding: EdgeInsets.all(10),
            // height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  'My Cards',
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  // mainAxisSize: Mai``,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: width(context) * .65,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/Orange.jpg'))),
                    FloatingActionButton(
                      onPressed: () {},
                      elevation: 2,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(
                        Icons.add,
                        size: 35,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  'Add New Card',
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.left,
                ),
                ListTile(
                  leading: Image.network(
                    'https://i.pinimg.com/736x/56/fd/48/56fd486a48ff235156b8773c238f8da9.jpg',
                    width: 40,
                  ),
                  title: AppText(
                    'Credit Card',
                    fontSize: 14,
                  ),
                  trailing: Radio(
                    groupValue: '',
                    value: '2',
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  leading: Image.network(
                    'https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/apple-icon.png',
                    width: 35,
                  ),
                  title: AppText(
                    'Google Pay',
                    fontSize: 14,
                  ),
                  trailing: Radio(
                    groupValue: '',
                    value: '1',
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  leading: Image.network(
                    'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                    width: 40,
                  ),
                  title: AppText(
                    'Google Pay',
                    fontSize: 14,
                  ),
                  trailing: Radio(
                    groupValue: '',
                    value: '',
                    activeColor: Theme.of(context).primaryColor,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.black),
                    onPressed: () {},
                    child: AppText(
                      'Add Now',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

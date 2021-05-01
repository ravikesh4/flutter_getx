import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/homepage.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Get.offAll(
              Homepage(),
            );
          },
          child: Text('Home'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import 'package:getx_learn/controller/homecontroller.dart';
import 'package:getx_learn/shop.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Appbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
                id: 'follower',
                builder: (_) {
                  print('folloers');
                  return Text(homeController.followers.toString());
                }),
            GetBuilder<HomeController>(
                id: 'status',
                builder: (_) {
                  print('status');
                  return Text(homeController.status ? 'Online' : 'Offline');
                }),
            RaisedButton(
              onPressed: () {
                homeController.updateStatus(!homeController.status);
              },
              child: Text('Update Status'),
            ),
            RaisedButton(
              onPressed: () {
                homeController.updateFollowers();
              },
              child: Text('Followers'),
            ),
          ],
        ),
      ),
    );
  }
}

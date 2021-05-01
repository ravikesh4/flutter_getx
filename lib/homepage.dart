import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Appbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.snackbar('Hi', 'i am a modern snackbar',
                    snackPosition: SnackPosition.BOTTOM,
                    // backgroundColor: Colors.red,
                    margin: EdgeInsets.all(10),
                    mainButton: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('Done'),
                    ),
                    isDismissible: true,
                    duration: Duration(milliseconds: 5000));
              },
              child: Text('Show Snackbar'),
            ),
            RaisedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'Are you sure?',
                  content: Text('By clicking data will be deleted'),
                  textCancel: 'No',
                  textConfirm: 'Yes',
                  onConfirm: () => Get.back(),
                );
              },
              child: Text('Show Dialogbox'),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:android/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Consumer<HomeController>(
          builder: (context, value, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('no file name'),
                ElevatedButton(
                  onPressed: value.pickExcelFile,
                  child: Text('Import'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

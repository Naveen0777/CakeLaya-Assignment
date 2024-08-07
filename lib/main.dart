import 'package:cake_laya/Components/colors.dart';
import 'package:cake_laya/manage_shop.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: AppColors.whiteColor,
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: ManageShopScreen(),
    );
  }
}

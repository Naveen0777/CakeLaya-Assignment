import 'package:cake_laya/Components/colors.dart';
import 'package:cake_laya/Components/custom_appbar.dart';
import 'package:cake_laya/Components/custom_button.dart';
import 'package:cake_laya/categories.dart';
import 'package:cake_laya/product_details.dart';
import 'package:flutter/material.dart';

class ShopItemManagement extends StatefulWidget {
  @override
  _ShopItemManagementState createState() => _ShopItemManagementState();
}

class _ShopItemManagementState extends State<ShopItemManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const CustomAppBar(title: 'MANAGE SHOP ITEMS'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 40.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: AppColors.backgroundColor,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Listed Items:',
                      style: TextStyle(
                        color: AppColors.headingColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '100',
                      style: TextStyle(
                        color: AppColors.buttonColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            CustomButton(
              text: 'Add Product Category',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetailsScreen()),
                );
              },
              borderRadius: BorderRadius.circular(8.0),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Categories Selected:',
              style: TextStyle(
                color: AppColors.headingColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 8.0),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesScreen()),
              ),
              child: Container(
                height: 40.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: AppColors.backgroundColor,
                    )),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    right: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cakes',
                        style: TextStyle(
                          color: AppColors.contentColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColors.contentColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cake_laya/Components/colors.dart';
import 'package:cake_laya/Components/custom_appbar.dart';
import 'package:cake_laya/Components/custom_button.dart';
import 'package:cake_laya/Components/image_container.dart';
import 'package:cake_laya/manage_shop_items.dart';
import 'package:flutter/material.dart';

class ManageShopScreen extends StatefulWidget {
  @override
  _ManageShopScreenState createState() => _ManageShopScreenState();
}

class _ManageShopScreenState extends State<ManageShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const CustomAppBar(
        title: 'MANAGE SHOP',
        showBackButton: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Shop Name:",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: AppColors.headingColor,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              "Hub Quality Bakers",
              style: TextStyle(
                fontSize: 16.0,
                color: AppColors.contentColor,
              ),
            ),
            const SizedBox(height: 24.0),
            const Text(
              "Add Shop Display Photo (Max 1):",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: AppColors.headingColor),
            ),
            const SizedBox(height: 16.0),
            CustomButton(
              text: 'Add Image',
              onPressed: () {},
              borderRadius: BorderRadius.circular(8.0),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const ImageContainer(),
            const SizedBox(height: 24.0),
            Expanded(
              child: Container(), // Placeholder for future content
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButton(
                text: 'Manage Shop Items',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShopItemManagement()));
                },
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}

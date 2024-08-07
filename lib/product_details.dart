import 'package:cake_laya/Components/colors.dart';
import 'package:cake_laya/Components/custom_appbar.dart';
import 'package:cake_laya/Components/custom_button.dart';
import 'package:cake_laya/Components/description_fields.dart';
import 'package:cake_laya/Components/image_container.dart';
import 'package:cake_laya/Components/input_field.dart';
import 'package:cake_laya/flavour_chart.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreen4State();
}

class _ProductDetailsScreen4State extends State<ProductDetailsScreen> {
  TextEditingController descController = TextEditingController();
  TextEditingController servingController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const CustomAppBar(
        title: 'PRODUCT DETAILS',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Product Name:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.contentColor,
                  )),
              const SizedBox(
                height: 8.0,
              ),
              const InputField(hintText: 'Enter Product Name'),
              const SizedBox(height: 16.0),
              DescriptionField(
                  heading: 'Description:',
                  placeholder: 'Write Product Description!',
                  controller: descController),
              DescriptionField(
                  heading: 'Note:',
                  placeholder: 'Write Serving Information!',
                  controller: servingController),
              DescriptionField(
                  heading: 'Serving Information:',
                  placeholder: 'Write Note!',
                  controller: noteController),
              const Text(
                'Flavour Chart:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.contentColor,
                ),
              ),
              const SizedBox(height: 8),
              CustomButton(
                text: 'Edit List',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FlavourChartScreen()));
                },
                borderRadius: BorderRadius.circular(8.0),
              ),
              const SizedBox(height: 16),
              const Text(
                'Size & Price Chart:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.contentColor,
                ),
              ),
              const SizedBox(height: 8),
              CustomButton(
                text: 'Edit List',
                onPressed: () {},
                borderRadius: BorderRadius.circular(8.0),
              ),
              const SizedBox(height: 16),
              const Text(
                'Veg/Non Veg:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.contentColor,
                ),
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusColor: AppColors.headingColor),
                value: 'Select Food Type',
                items:
                    ['Select Food Type', 'Veg', 'Non Veg'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                        color: AppColors.contentColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {},
              ),
              const SizedBox(height: 16),
              const Text(
                'Add Product Images (Max 1):',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.headingColor,
                ),
              ),
              const SizedBox(height: 8),
              CustomButton(
                text: 'Add Image',
                onPressed: () {},
                borderRadius: BorderRadius.circular(8.0),
              ),
              const SizedBox(height: 16),
              const ImageContainer(),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomButton(
                  text: 'Save',
                  onPressed: () {},
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}

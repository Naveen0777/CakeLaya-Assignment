import 'package:cake_laya/Components/colors.dart';
import 'package:flutter/material.dart';

class DescriptionField extends StatelessWidget {
  final String heading;
  final String placeholder;
  final int maxLines;
  final int maxLength;
  final TextEditingController controller;

  const DescriptionField({
    super.key,
    required this.heading,
    required this.placeholder,
    this.maxLines = 5,
    this.maxLength = 500,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: const TextStyle(
            color: AppColors.contentColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          maxLength: maxLength,
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: const TextStyle(
              color: AppColors.contentColor,
              fontWeight: FontWeight.w400,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.headingColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

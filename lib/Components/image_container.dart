import 'package:cake_laya/Components/colors.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const Center(
            child: Icon(
              Icons.add_a_photo,
              size: 28.0,
              color: Colors.grey,
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: const Icon(
              Icons.delete,
              color: AppColors.buttonColor,
              size: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}

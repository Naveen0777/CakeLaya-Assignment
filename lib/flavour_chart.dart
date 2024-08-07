import 'package:cake_laya/Components/colors.dart';
import 'package:cake_laya/Components/custom_appbar.dart';
import 'package:cake_laya/Components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlavourChartScreen extends StatefulWidget {
  @override
  _FlavourChartScreenState createState() => _FlavourChartScreenState();
}

class _FlavourChartScreenState extends State<FlavourChartScreen> {
  List<String> flavours = [];

  void addFlavour() {
    setState(() {
      flavours.add('');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const CustomAppBar(title: 'FLAVOUR CHART'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: flavours.length + 1,
                itemBuilder: (context, index) {
                  if (index < flavours.length) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter Flavour',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: const BorderSide(
                              color: AppColors.headingColor,
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            flavours[index] = value;
                          });
                        },
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: CustomButton(
                        text: 'Insert Another Field',
                        onPressed: addFlavour,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cake_laya/Components/colors.dart';
import 'package:cake_laya/Components/custom_appbar.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  CategoriesScreen({
    Key? key,
  }) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<String> selectedCategories = ['Cake', 'Pizza'];
  List<String> otherCategories = ['Burger', 'Roti'];
  bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const CustomAppBar(title: 'CATEGORIES'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Categories Selected:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: AppColors.headingColor,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: selectedCategories.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: AppColors.whiteColor,
                    child: ListTile(
                      title: Text(
                        selectedCategories[index],
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.buttonColor,
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.cancel_outlined,
                          size: 16.0,
                          color: AppColors.buttonColor,
                        ),
                        onPressed: () {
                          setState(() {
                            otherCategories.add(selectedCategories[index]);
                            selectedCategories.removeAt(index);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            const Text(
              'Other Categories:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: AppColors.headingColor,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: otherCategories.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: AppColors.whiteColor,
                    child: ListTile(
                      title: Text(
                        otherCategories[index],
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.buttonColor,
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.add,
                          size: 18.0,
                          color: AppColors.buttonColor,
                        ),
                        onPressed: () {
                          setState(() {
                            selectedCategories.add(otherCategories[index]);
                            otherCategories.removeAt(index);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

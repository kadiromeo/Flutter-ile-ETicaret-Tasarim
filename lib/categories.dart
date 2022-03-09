import 'package:eticaret/category.dart';
import 'package:eticaret/components/buttonnavigation.dart';
import 'package:eticaret/components/header.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  final List<String> categories = [
    "All",
    "Computers",
    "Accessories",
    "SmartPhones",
    "Smart Objects",
    "Speakers",
    "Watch",
    "TV",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader("Categories", context),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                  children: categories
                      .map((String Title) => buildCategory(Title, context))
                      .toList()),
            ),
          ],
        ),
      ),
      buttonNavgionBar(),
    ])));
  }
}

Widget buildCategory(String Title, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return CategoryPage();
      }));
    },
    child: Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: Offset(0, 4)),
          ]),
      child: Text(
        Title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

import 'package:eticaret/components/buttonnavigation.dart';
import 'package:eticaret/productDetail.dart';
import 'package:flutter/material.dart';
import 'components/header.dart';

class CategoryPage extends StatelessWidget {
  final List<Map> products = [
    {"Title": "Lenovo Laptop", "Foto": "assets/asset3.png", "Price": "999"},
    {"Title": "Monster Laptop", "Foto": "assets/asset3.png", "Price": "999"},
    {"Title": "Mac Laptop", "Foto": "assets/asset3.png", "Price": "999"},
    {"Title": "Casper Laptop", "Foto": "assets/asset3.png", "Price": "999"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          buildHeader("Laptop", context),
          SizedBox(height: 30),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: products.map((Map product) {
                return buildProduct(product["Title"], product["Foto"],
                    product["Price"], context);
              }).toList(),
            ),
          ),
          buttonNavgionBar(),
        ]),
      ),
    ])));
  }
}

Widget buildProduct(String Title, Foto, Price, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return ProductDetailPage(Title);
      }));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 24,
                offset: Offset(0, 16))
          ]),
      child: Column(
        children: [
          Image.asset(Foto),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.blueAccent),
              ),
              Text(
                "USD $Price",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.blueGrey),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

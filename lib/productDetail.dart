import 'package:eticaret/components/buttonnavigation.dart';
import 'package:eticaret/components/header.dart';
import 'package:eticaret/components/label.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  String productTitle;
  ProductDetailPage(this.productTitle);
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  List<Color> colors = [
    Colors.grey,
    Colors.black,
    Colors.lightBlue,
    Colors.deepOrange,
  ];

  final List<int> capacities = [
    128,
    256,
    512,
    1000,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            buildHeader(widget.productTitle, context),
            SizedBox(height: 32),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListView(
                  children: [
                    Label("New"),
                    SizedBox(height: 25),
                    Image.asset("assets/asset3.png"),
                    SizedBox(height: 30),
                    //RENK SECENEKLER
                    Text("Color"),
                    SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: colors
                            .map((Color color) => ColorOption(color))
                            .toList()),
                    //HAFIZA SECENEK
                    SizedBox(height: 32),
                    Text("Capacity"),
                    Center(
                        child: Text(
                      "128  256  512  1000",
                    )),
                    SizedBox(height: 16),
                    //SEPETE EKLE
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.blueAccent),
                      child: Text(
                        "Add To Cart",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ])),
      buttonNavgionBar(),
    ])));
  }
}

Widget ColorOption(Color color) {
  return Container(
    margin: EdgeInsets.only(
      right: 15,
    ),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    ),
    width: 23,
    height: 23,
  );
}

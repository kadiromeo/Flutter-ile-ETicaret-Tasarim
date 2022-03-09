import 'package:eticaret/categories.dart';
import 'package:eticaret/components/buttonnavigation.dart';
import 'package:eticaret/components/label.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  //BAŞLIK
                  buildBaslik(),
                  //BANNER
                  buildBanner(),
                  //BUTTONLAR
                  Padding(
                    padding: EdgeInsets.only(top: 48.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildNavigation(
                            text: "Categories",
                            icon: Icons.menu,
                            widget: CategoriesPage(),
                            context: context),
                        buildNavigation(text: "Favorites", icon: Icons.star),
                        buildNavigation(text: "Gifts", icon: Icons.shop),
                        buildNavigation(
                            text: "Best Selling",
                            icon: Icons.verified_user_sharp),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  //SALES TİTLE
                  Text(
                    "Sales",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xFF0A1034)),
                  ),
                  SizedBox(height: 16),

                  //SALES ITEM
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSales(
                        text: "SmartPhones",
                        photourl: "assets/asset2.png",
                        discount: "-%50",
                        screenWidth: screenWidth,
                      ),
                      buildSales(
                        text: "SmartPhones",
                        photourl: "assets/asset2.png",
                        discount: "-%50",
                        screenWidth: screenWidth,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSales(
                        text: "SmartPhones",
                        photourl: "assets/asset2.png",
                        discount: "-%50",
                        screenWidth: screenWidth,
                      ),
                      buildSales(
                        text: "SmartPhones",
                        photourl: "assets/asset2.png",
                        discount: "-%50",
                        screenWidth: screenWidth,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //BUTTON NAVIGATION
            buttonNavgionBar(),
          ],
        ),
      ),
    );
  }
}

Widget buildBaslik() {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Text(
      "Home",
      style: TextStyle(
        fontSize: 32,
        color: Color(0xFF0A1034),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildBanner() {
  return Padding(
      padding: EdgeInsets.only(top: 24),
      child: Container(
          padding: EdgeInsets.only(left: 24, right: 36, bottom: 18),
          decoration: BoxDecoration(
              color: Color(0xFF0001FC),
              borderRadius: BorderRadius.circular(6.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bose Home Spiker",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    "USD 279",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Image.asset(
                "assets/aset1.png",
                width: 100,
              ),
            ],
          )));
}

Widget buildNavigation(
    {String? text, IconData? icon, Widget? widget, BuildContext? context}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return widget!;
      }));
    },
    child: Column(children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.black12),
        child: Icon(
          icon,
          color: Color(0xFF0001FC),
          size: 18,
        ),
      ),
      SizedBox(height: 8),
      Text(
        text!,
        style: TextStyle(
            color: Color(0xFF1F53E4),
            fontSize: 14,
            fontWeight: FontWeight.w500),
      ),
    ]),
  );
}

Widget buildSales({
  String? text,
  String? photourl,
  String? discount,
  @required double? screenWidth,
}) {
  return Container(
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // %50
        Label(discount!),
        //Tel Foto
        Image.asset(
          photourl!,
          width: 80,
        ),
        Text(text!),
        //İSİM
      ],
    ),
  );
}

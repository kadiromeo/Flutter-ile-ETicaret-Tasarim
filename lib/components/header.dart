import 'package:flutter/material.dart';

Widget buildHeader(String Title, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 29),
      //GERİ DÖN IKONU
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 27,
        ),
      ),

      //KATEGORİLER
      SizedBox(height: 24),
      Text(
        Title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
            fontSize: 24),
      ),
    ],
  );
}

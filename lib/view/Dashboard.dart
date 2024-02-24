import 'dart:ffi';

import 'package:app/Utils/media.dart';
import 'package:app/widgets/checkout_button.dart';
import 'package:app/widgets/gridCard.dart';
import 'package:app/widgets/product_text.dart';
import 'package:app/widgets/slected_product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Shopping Card",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                Icons.share,
                size: 25,
              ),
            ),
          ],
        ),
        body: const Column(
          children: [
            SelectedProductCard(
              img: "assets/face.jpg",
              name: "BH Clam",
              save: "23.05",
            ),
            SelectedProductCard(
              img: "assets/cos.jpg",
              name: "BH Clam",
              save: "23.05",
            ),
            Text(
              "Product your may Like",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GridCard(
                  per: "20%",
                  save: "13.02",
                  txt: "Perfume",
                ),
                GridCard(
                  per: "10%",
                  save: "69.02",
                  txt: "Shave Cream",
                ),
                GridCard(
                  per: "78%",
                  save: "56.02",
                  txt: "Hair cream",
                ),
              ],
            ),
            Spacer(),
            CheckOutButton(),
          ],
        ));
  }
}

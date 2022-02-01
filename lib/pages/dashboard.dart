import 'package:bottom_navigation/pages/products/items.dart';
import 'package:bottom_navigation/pages/products/product.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final products = [
    Product(
        id: 1,
        name: "Iphone 12 Pro Max",
        desc: "Iphone brought by Apple",
        price: 999,
        color: "#33505a",
        image: "assets/phoneImage.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ItemWidget(product: products[index]);
        },
      ),
    );
  }
}

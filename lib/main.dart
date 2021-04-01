import 'package:flutter/material.dart';
import 'package:helloworld/products/Product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Product List App',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        // padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Product(
                "Honor 10i",
                'https://root-nation.com/wp-content/uploads/2019/05/honor-10i-5-976x650.jpg',
                '5499'),
            Product(
                "3 Axis Handheld Gimbal for Smartphones",
                'https://cdn.shopify.com/s/files/1/0019/2620/1411/products/1_1024x1024.jpg?v=1543359186',
                '2790'),
            Product(
                "Zorrlla ST-02S Newest Aluminum Phone Tripod Mount w Cold Shoe Mount, Support Vertical and Horizontal, Universal Metal Adjustable Clamp for iPhone XS Xs Max X 8 7 Plus Samsung Huawei Android Smartphones",
                'https://aluratek.com/pub/media/catalog/product/cache/e4d64343b1bc593f1c5348fe05efa4a6/3/-/3-axis-handheld-gimbal-smartphones-phone-vertical.jpg',
                '956'),
          ],
        ),
      ),
    );
  }
}

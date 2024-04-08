import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  final double price;

  Product({required this.name, required this.image, required this.price});
}

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: "Chocolate Cake",
      image: "assets/chocolate_cake.jpg",
      price: 89000,
    ),
    Product(
      name: "Strawberry Tart",
      image: "assets/strawberry_tart.jpg",
      price: 32000,
    ),
    Product(
      name: "Blueberry Muffin",
      image: "assets/blueberry_muffin.jpg",
      price: 18000,
    ),
    Product(
      name: "Strawberry Cake",
      image: "assets/strawberry_cake.jpg",
      price: 89000,
    ),
    Product(
      name: "Brownie",
      image: "assets/brownie.jpg",
      price: 22000,
    ),
    Product(
      name: "Mango Cake",
      image: "assets/mango_cake.jpg",
      price: 54000,
    ),
    Product(
      name: "Ice Cream Cake",
      image: "assets/icecream_cake.jpg",
      price: 57000,
    ),
    Product(
      name: "Strawberry Mochi",
      image: "assets/strawberry_mochi.jpg",
      price: 14000,
    ),
    Product(
      name: "Pudding Cake",
      image: "assets/pudding_cake.jpg",
      price: 15000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Menampilkan 2 item per baris
          crossAxisSpacing: 10.0, // Spasi antar kolom
          mainAxisSpacing: 10.0, // Spasi antar baris
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 3, // Menambah bayangan pada card
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Mengatur border radius
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    child: Image.asset(
                      products[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        products[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 4), // Spasi antar teks
                      Text(
                        "Rp ${products[index].price.toStringAsFixed(0)}",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

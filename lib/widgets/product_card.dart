import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  final String name;
  final String price;
  final String image;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: EdgeInsets.all(10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// GAMBAR PRODUK
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          SizedBox(height: 10),

          /// NAMA PRODUK
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.bold),
          ),

          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [

              Text(price),

              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.green,
                child: Icon(Icons.add,
                    size:16,color: Colors.white),
              )
            ],
          )

        ],
      ),
    );
  }
}
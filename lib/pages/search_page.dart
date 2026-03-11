import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  TextEditingController searchController = TextEditingController();

  List products = [
    {"name":"Organic Banana","price":"\$2.99"},
    {"name":"Fresh Milk","price":"\$4.50"},
    {"name":"Avocado","price":"\$3.20"},
    {"name":"Strawberry","price":"\$5.99"},
    {"name":"Carrot","price":"\$2.10"},
    {"name":"Tomato","price":"\$1.80"},
  ];

  List filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = products;
  }

  void searchProduct(String query){

    final results = products.where((product){

      final name = product["name"].toLowerCase();
      final input = query.toLowerCase();

      return name.contains(input);

    }).toList();

    setState(() {
      filteredProducts = results;
    });

  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Padding(
        padding: EdgeInsets.all(16),

        child: Column(

          children: [

            /// SEARCH BAR
            TextField(
              controller: searchController,

              decoration: InputDecoration(
                hintText: "Search product...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              onChanged: searchProduct,
            ),

            SizedBox(height:20),

            /// RESULT LIST
            Expanded(

              child: ListView.builder(

                itemCount: filteredProducts.length,

                itemBuilder: (context,index){

                  final product = filteredProducts[index];

                  return Card(

                    child: ListTile(

                      leading: Icon(Icons.shopping_basket),

                      title: Text(product["name"]),

                      subtitle: Text(product["price"]),

                    ),

                  );

                },

              ),

            )

          ],

        ),

      ),

    );

  }
}
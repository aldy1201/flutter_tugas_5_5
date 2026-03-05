import 'package:flutter/material.dart';
import 'search_page.dart';
import 'setting_page.dart';
import '../widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  final List<Map<String, String>> products = [
    {
      "name": "Organic Banana",
      "price": "\$2.99",
      "image": "assets/banana.png"
    },
    {
      "name": "Fresh Milk",
      "price": "\$4.50",
      "image": "assets/milk.png"
    },
    {
      "name": "Avocado",
      "price": "\$3.20",
      "image": "assets/avocado.png"
    },
    {
      "name": "Strawberry",
      "price": "\$5.99",
      "image": "assets/strawberry.png"
    },
    {
      "name": "Carrot",
      "price": "\$2.10",
      "image": "assets/carrot.png"
    },
    {
      "name": "Tomato",
      "price": "\$1.80",
      "image": "assets/tomato.png"
    },
  ];

  Widget buildHomeContent() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// HEADER
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [

                Text(
                  "All Products",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),

                CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.person,color: Colors.white),
                )
              ],
            ),

            const SizedBox(height: 20),

            /// BANNER
            Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const Text(
                          "Get free delivery\non shopping \$200",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 10),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},

                          child: const Text(
                            "Learn More",
                            style: TextStyle(color: Colors.green),
                          ),
                        )
                      ],
                    ),
                  ),

                  const Icon(
                    Icons.local_shipping,
                    size: 50,
                    color: Colors.white,
                  )

                ],
              ),
            ),

            const SizedBox(height: 20),

            /// CATEGORY
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("All Categories"),
                Text("Sort by"),
              ],
            ),

            const SizedBox(height: 10),

            /// GRID PRODUCT
            Expanded(
              child: GridView.builder(

                itemCount: products.length,

                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),

                itemBuilder: (context, index) {

                  final product = products[index];

                  return ProductCard(
                    name: product["name"]!,
                    price: product["price"]!,
                    image: product["image"]!,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    List pages = [
      buildHomeContent(),
      SearchPage(),
      SettingPage(),
    ];

    return Scaffold(

      body: pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: selectedIndex,

        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },

        items: const [

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),

          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"),

          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting"),
        ],
      ),
    );
  }
}
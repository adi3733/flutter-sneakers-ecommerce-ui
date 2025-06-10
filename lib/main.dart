import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class CategoryBadge extends StatelessWidget {
  final String text;

  const CategoryBadge(this.text,);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}



class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          title: const Text(
            "Women's Shoes",
            style: TextStyle(
              fontFamily: 'Kapra',
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 21, 12, 22),
              fontSize: 25,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Icon(Icons.shopping_cart_outlined, color: Color.fromARGB(255, 69, 52, 137)),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://media.gq.com/photos/5c65b35e73213b217a33093f/16:9/w_1920,c_limit/air-max-dia-1163.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 360,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'The Nike Air Max Dia',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        shadows:[
                          Shadow(
                            color: Color.fromARGB(255, 0, 0, 0),
                            offset: Offset(2, 2),
                            blurRadius: 6.0,
                          )
                        ]
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        CategoryBadge("SHOES"),
                        SizedBox(width: 15),
                        CategoryBadge("FOOTWEAR"),
                        SizedBox(width: 15),
                        CategoryBadge("NEW ARRIVAL"),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "The Nike Air Max Dia is designed exclusively for women, offering a sleek, modern silhouette with a lightweight feel and elevated style. With a minimalist upper, exaggerated midsole, and a visible Air unit in the heel, this shoe strikes the perfect balance between sporty performance and 👟 Visible Air Cushioning: Enhanced comfort with the iconic Max Air unit in the heel.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Text(
                          "Quantity",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text("1"),
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 45),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: const Text(
                        "PURCHASE",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



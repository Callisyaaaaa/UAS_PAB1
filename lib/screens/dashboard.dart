import 'package:flutter/material.dart';
import 'recipe_details.dart';

class Dashboard extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'title': 'Chicken Avocado Salad',
      'image': 'images/chicken salad.jpg',
    },
    {
      'title': 'Sweet Potato and Black Bean Tacos',
      'image': 'images/tacos.jpg',
    },
    {
      'title': 'Baked Salmon Asparagus',
      'image': 'images/baked salmon.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/profile.jpg'), // Foto profil
                    radius: 30,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Selin Malik!',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('Discover, Cook, and Enjoy Healthy Meals!'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Today's Recipe Picks",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recipes.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeDetails(
                              title: recipes[index]['title']!,
                              image: recipes[index]['image']!,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(recipes[index]['image']!),
                            fit: BoxFit.cover,
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.black54,
                          child: Text(
                            recipes[index]['title']!,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

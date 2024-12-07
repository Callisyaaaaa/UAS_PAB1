import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final List<String> dummyRecipes = [
    'Healthy Salad',
    'Protein Smoothie',
    'Grilled Chicken',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FitDine'),
      ),
      body: ListView.builder(
        itemCount: dummyRecipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dummyRecipes[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(recipe: dummyRecipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String recipe;

  DetailScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe),
      ),
      body: Center(
        child: Text('$recipe Details'),
      ),
    );
  }
}

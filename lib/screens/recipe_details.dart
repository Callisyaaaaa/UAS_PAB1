import 'package:flutter/material.dart';

class RecipeDetails extends StatelessWidget {
  final String title;
  final String image;

  const RecipeDetails({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Title and Ingredients
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Ingredients:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('- 1 skinless chicken breast'),
                  Text('- 1 ripe avocado, diced'),
                  Text('- 1 cup romaine lettuce'),
                  Text('- ½ cup cherry tomatoes, halved'),
                  Text('- 1 tbsp olive oil'),
                  // Add more ingredients as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

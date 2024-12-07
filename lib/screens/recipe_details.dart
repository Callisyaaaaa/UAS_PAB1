import 'package:flutter/material.dart';

class RecipeDetails extends StatelessWidget {
  final String title;
  final String image;

  RecipeDetails({
    required this.title,
    required this.image,
  });

  final Map<String, dynamic> recipeData = {
    'Chicken Avocado Salad': {
      'description':
          'A healthy salad with grilled chicken and fresh avocado, perfect for your healthy meal.',
      'ingredients': [
        '1 grilled chicken breast',
        '1 avocado, diced',
        '2 cups mixed lettuce',
        '1/4 cup cherry tomatoes, halved',
        '2 tbsp olive oil',
        'Salt and pepper to taste',
      ],
      'instructions': [
        'Grill the chicken breast until cooked through and slice it thinly.',
        'Combine lettuce, avocado, and cherry tomatoes in a bowl.',
        'Add the grilled chicken on top.',
        'Drizzle with olive oil, season with salt and pepper.',
        'Toss gently, then serve.',
      ],
    },
    'Sweet Potato and Black Bean Tacos': {
      'description':
          'Delicious tacos featuring roasted sweet potatoes and seasoned black beans, a vegetarian delight.',
      'ingredients': [
        '2 medium sweet potatoes, diced',
        '1 can black beans, drained and rinsed',
        '1 tsp cumin',
        '1 tsp smoked paprika',
        '1/4 cup chopped cilantro',
        'Taco shells',
        'Salt and pepper to taste',
      ],
      'instructions': [
        'Preheat the oven to 400°F (200°C).',
        'Toss the sweet potatoes with olive oil, cumin, paprika, salt, and pepper. Roast for 20 minutes.',
        'Heat the black beans in a skillet with a pinch of salt and pepper.',
        'Fill taco shells with roasted sweet potatoes, black beans, and top with cilantro.',
        'Serve warm with your favorite toppings.',
      ],
    },
    'Baked Salmon Asparagus': {
      'description':
          'A light and flavorful dish of salmon baked alongside tender asparagus.',
      'ingredients': [
        '2 salmon fillets',
        '1 bunch asparagus, trimmed',
        '2 tbsp olive oil',
        '1 lemon, sliced',
        'Salt and pepper to taste',
      ],
      'instructions': [
        'Preheat the oven to 375°F (190°C).',
        'Place salmon fillets and asparagus on a baking sheet.',
        'Drizzle with olive oil, and season with salt and pepper.',
        'Top the salmon with lemon slices.',
        'Bake for 12-15 minutes until salmon is cooked through and asparagus is tender.',
      ],
    },
  };

  @override
  Widget build(BuildContext context) {
    final recipe = recipeData[title];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Recipe Image
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Recipe Title
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 10),
              // Recipe Description
              Text(
                recipe['description'],
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 20),
              const Text(
                "Ingredients:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // Ingredients List
              for (String ingredient in recipe['ingredients'])
                Text(
                  "- $ingredient",
                  style: const TextStyle(fontSize: 16),
                ),
              const SizedBox(height: 20),
              const Text(
                "Instructions:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // Instructions List
              for (String instruction in recipe['instructions'])
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    instruction,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

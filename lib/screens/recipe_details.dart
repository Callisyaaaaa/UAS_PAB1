import 'package:flutter/material.dart';

class RecipeDetails extends StatelessWidget {
  final String title;
  final String image;

  RecipeDetails({required this.title, required this.image});

  // Map containing all recipe details
  final Map<String, Map<String, dynamic>> recipeDetails = {
    'Chicken Avocado Salad': {
      'description':
          'A healthy salad with grilled chicken and fresh avocado, perfect for a nutritious meal.',
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
          'A flavorful taco recipe filled with sweet potatoes, black beans, and delicious spices.',
      'ingredients': [
        '2 medium sweet potatoes, peeled and diced',
        '1 cup black beans, cooked',
        '8 small taco shells',
        '1/2 cup salsa',
        '1/4 cup chopped cilantro',
        '1 tsp cumin',
        '1 tsp smoked paprika',
        'Salt and pepper to taste',
        '2 tbsp olive oil',
      ],
      'instructions': [
        'Preheat oven to 200°C (400°F).',
        'Toss the diced sweet potatoes with olive oil, cumin, paprika, salt, and pepper.',
        'Roast in the oven for 20-25 minutes until tender.',
        'Warm the taco shells in a skillet or oven.',
        'Fill each taco shell with roasted sweet potatoes, black beans, salsa, and cilantro.',
        'Serve immediately.',
      ],
    },
    'Baked Salmon Asparagus': {
      'description':
          'A simple yet delicious dish with baked salmon and fresh asparagus.',
      'ingredients': [
        '2 salmon fillets',
        '1 bunch asparagus, trimmed',
        '2 tbsp olive oil',
        '1 tbsp lemon juice',
        '2 garlic cloves, minced',
        'Salt and pepper to taste',
      ],
      'instructions': [
        'Preheat oven to 200°C (400°F).',
        'Place salmon fillets and asparagus on a baking sheet.',
        'Drizzle with olive oil and lemon juice.',
        'Sprinkle minced garlic, salt, and pepper over the top.',
        'Bake for 12-15 minutes until salmon is cooked through and asparagus is tender.',
        'Serve warm.',
      ],
    },
    'Zucchini Noodles with Pesto': {
      'description':
          'A low-carb alternative to pasta made with zucchini noodles and fresh pesto sauce.',
      'ingredients': [
        '2 large zucchinis, spiralized',
        '1/2 cup basil pesto',
        '1/4 cup cherry tomatoes, halved',
        '2 tbsp olive oil',
        'Salt and pepper to taste',
        'Optional: Parmesan cheese for garnish',
      ],
      'instructions': [
        'Heat olive oil in a skillet over medium heat.',
        'Add spiralized zucchini and sauté for 2-3 minutes until slightly tender.',
        'Remove from heat and toss with basil pesto.',
        'Top with cherry tomatoes and Parmesan cheese if desired.',
        'Serve immediately.',
      ],
    },
    'Avocado Toast with Poached Egg': {
      'description':
          'A classic breakfast option with creamy avocado spread and a perfectly poached egg.',
      'ingredients': [
        '2 slices whole-grain bread, toasted',
        '1 avocado, mashed',
        '2 eggs, poached',
        'Salt and pepper to taste',
        'Optional: chili flakes and lemon juice for garnish',
      ],
      'instructions': [
        'Toast the bread slices until golden and crisp.',
        'Spread mashed avocado evenly on each toast.',
        'Top with a poached egg on each slice.',
        'Season with salt, pepper, and optional chili flakes or lemon juice.',
        'Serve immediately.',
      ],
    },
    'Baked Cod with Lemon and Herbs': {
      'description':
          'A light and flavorful dish featuring baked cod seasoned with lemon and fresh herbs.',
      'ingredients': [
        '2 cod fillets',
        '1 lemon, sliced',
        '2 tbsp olive oil',
        '1 tsp garlic powder',
        '1 tsp dried parsley',
        'Salt and pepper to taste',
      ],
      'instructions': [
        'Preheat oven to 200°C (400°F).',
        'Place cod fillets on a baking sheet lined with parchment paper.',
        'Drizzle olive oil over the fillets and season with garlic powder, parsley, salt, and pepper.',
        'Top each fillet with lemon slices.',
        'Bake for 15-20 minutes until the fish is flaky and cooked through.',
        'Serve immediately with a side of vegetables or rice.',
      ],
    },
  };

  @override
  Widget build(BuildContext context) {
    final recipe = recipeDetails[title];
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
                child: Image.asset(
                  image,
                  height: 250,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              // Description
              Text(
                recipe?['description'] ?? '',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              // Ingredients
              const Text(
                'Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ...?recipe?['ingredients'].map<Widget>(
                (ingredient) => Text('- $ingredient'),
              ),
              const SizedBox(height: 20),
              // Instructions
              const Text(
                'Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ...?recipe?['instructions'].map<Widget>(
                (instruction) => Text('• $instruction'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

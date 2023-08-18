import 'ingredientes.dart';

class Recipe {
  String label;
  String imageURL;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageURL, this.servings, this.ingredients);

  static List<Recipe> samples =
  [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/2126711929_ef763de2b3_w.jpg',
      4,
      [
        Ingredient(1, 'box', 'Spaghetti',),
        Ingredient(4, '', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
    Recipe(
        'Tomato Soup',
        'assets/27729023535_a57606c1be.jpg',
        2,
        [
          Ingredient(1, 'can', 'Tomato soup',),
        ]
    )
  ];
}
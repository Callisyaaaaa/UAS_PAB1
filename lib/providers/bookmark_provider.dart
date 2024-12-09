import 'package:flutter/material.dart';

class BookmarkProvider with ChangeNotifier {
  final List<String> _bookmarkedRecipes = [];

  List<String> get bookmarkedRecipes => _bookmarkedRecipes;

  void toggleBookmark(String recipe) {
    if (_bookmarkedRecipes.contains(recipe)) {
      _bookmarkedRecipes.remove(recipe);
    } else {
      _bookmarkedRecipes.add(recipe);
    }
    notifyListeners();
  }
}

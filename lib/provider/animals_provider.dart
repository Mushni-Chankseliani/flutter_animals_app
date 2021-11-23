import 'package:animals_app/data/animals_data.dart';
import 'package:flutter/material.dart';

class AnimalsProvider extends ChangeNotifier {
  String? animalImageUrl = animalsData['dog'];
  void changeAnimal(String animalName) {
    animalImageUrl = animalsData[animalName];
    notifyListeners();
  }
}

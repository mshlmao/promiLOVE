import 'package:material_ui/material_ui.dart';

import 'drink_type.dart';

class DrinkEntry {
  final DrinkType drinkType;  // Rodzaj wypitego trunku
  final double volume;        // Objętość w mililitrach
  final DateTime timeOfDrink; // Godzina i data wypicia

  const DrinkEntry({
    required this.drinkType,
    required this.volume,
    required this.timeOfDrink,
  });

  double get alcoholAmountMl => drinkType.getAlcoholAmountMl(volume);
  double get alcoholAmountGrams => drinkType.getAlcoholAmountGrams(volume);
}
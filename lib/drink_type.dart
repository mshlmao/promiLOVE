import 'package:material_ui/material_ui.dart';

class DrinkType{
  final String name;
  final double alcoholContent;        // od 0 do 1, 0.05 dla 5 procentowego piwa, 0.4 dla czystej
  final List<double> presetSizes;     // domyślne ilości do dodania bez wpisywania w mililitrach
  final IconData iconData;                // ikona do wyświetlenia kiedy jest mało miejsca np. na wykresie
  //final String imagePath;             // ścieżka do obrazu do wyświetlenia kiedy jest więcej miejsca 

  const DrinkType({
    required this.name,
    required this.alcoholContent,
    required this.presetSizes,
    required this.iconData,
    //required this.imagePath,
  });

  // Zwraca ilość alkoholu w porcji "drinkVolume" w mililitrach
  double getAlcoholAmountMl(double drinkVolume) => drinkVolume * alcoholContent;
  // Zwraca ilość alkoholu w porcji "drinkVolume" w gramach
  double getAlcoholAmountGrams(double drinkVolume) => getAlcoholAmountMl(drinkVolume) * 0.789;
}

const List<DrinkType> defaultDrinkTypes = [
  DrinkType(
    name: "Piwo 5%",
    alcoholContent: 0.05,
    presetSizes: [330, 500, 568],
    iconData: Icons.sports_bar_rounded,
  ),
  DrinkType(
    name: "Wino 10%",
    alcoholContent: 0.1,
    presetSizes: [150, 300, 450],
    iconData: Icons.wine_bar_rounded,
  ),
  DrinkType(
    name: "Wódka czysta",
    alcoholContent: 0.4,
    presetSizes: [20, 25, 50],
    iconData: Icons.local_bar_rounded,
  )
];
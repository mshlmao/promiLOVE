import 'package:material_ui/material_ui.dart';

void showAddDrinkPage(BuildContext context){
  Navigator.of(context).push(
    MaterialPageRoute(
       builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text("Dodaj napój"),
          titleSpacing: 0.0,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          toolbarHeight: 48.0,
          shadowColor: Theme.of(context).colorScheme.shadow,
          elevation: 4.0,
          surfaceTintColor: Color(0x00000000),
        ),
        body: Center(
          child:  Column(
            mainAxisAlignment: .center,
            children: [
              Text("tu bedzie ekran wyboru napojów do dodania")
            ],
          ),
        ),
      )
    ),
  );
}

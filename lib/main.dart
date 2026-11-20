import 'package:flutter/services.dart'; // Disables phone rotation
import 'package:material_ui/material_ui.dart';
import 'package:cupertino_ui/cupertino_ui.dart'; // The cool iphone page transition

import 'add_drink_page.dart';
import "settings_page.dart";

const double addButtonSize = 80;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);  // No phone rotation
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alkoholove',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: .fromARGB(255, 0, 32, 64), brightness: .dark),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          }
        )
      ),
      home: const HomeScreen(title: 'Alkoholove'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [IconButton(
          onPressed: () => showSettingsPage(context),
          icon: Icon(Icons.settings_rounded), iconSize: 28,)],
        toolbarHeight: 48.0,
        shadowColor: Theme.of(context).colorScheme.shadow,
        elevation: 4.0
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('tu bedzie wykres i logi'),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: addButtonSize,
        height: addButtonSize,
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          onPressed: () => showAddDrinkPage(context),
          elevation: 4.0,
          child: Icon(Icons.add_rounded, size: addButtonSize/2),
        )
      )
    );
  }
}

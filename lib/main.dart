import 'package:material_ui/material_ui.dart';
import 'package:cupertino_ui/cupertino_ui.dart';

import 'add_drink_screen.dart';

const double addButtonSize = 80;
void main() {
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
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(widget.title),
        toolbarHeight: 48.0,
        shadowColor: Theme.of(context).shadowColor,
        elevation: 6.0
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
          onPressed: () => showAddDrinkScreen(context),
          tooltip: 'Dodaj',
          elevation: 6,
          child: Icon(Icons.add_rounded, size: addButtonSize/2),
        )
      )
    );
  }
}

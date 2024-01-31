import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'drawer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(
        title: appTitle,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _SelectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'index 1: Buisness',
      style: optionStyle,
    ),
    Text(
      'index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: _widgetOptions[_SelectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Text Header')),
            ListTile(
              title: const Text('Home'),
              selected: _SelectedIndex == 0,
              onTap: () => _OnItemTapped(0),
            ),
            ListTile(
              title: const Text('Buisness'),
              selected: _SelectedIndex == 1,
              onTap: () => _OnItemTapped(1),
            ),
            ListTile(
              title: const Text('School'),
              selected: _SelectedIndex == 2,
              onTap: () => _OnItemTapped(2),
            ),
          ],
        ),
      ),
    );
  }

  void _OnItemTapped(int index) {
    setState(() {
      _SelectedIndex=index;
    });
  }
}

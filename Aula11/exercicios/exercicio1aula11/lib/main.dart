import 'package:flutter/material.dart';
import 'package:exercicio1aula11/screens/tela1.dart';
import 'package:exercicio1aula11/screens/tela2.dart';
import 'package:exercicio1aula11/screens/tela3.dart';
import 'package:exercicio1aula11/screens/tela4.dart';

void main() {
  runApp(const NavBottom());
}

class NavBottom extends StatelessWidget {
  const NavBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NavScreen(),
    );
  }
}

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Brasil(),
    Italia(),
    Japao(),
    Mexico(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicativo Aula 11"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: '🇧🇷 Brasil',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: '🇮🇹 Itália'),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: '🇯🇵 Japão',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: '🇲🇽 México',
          ),
        ],
      ),
    );
  }
}

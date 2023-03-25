import 'package:finance_app/screens/dashboard_screen.dart';
import 'package:finance_app/screens/home_page_screen.dart';
import 'package:finance_app/screens/expenses_screen.dart';
import 'package:finance_app/screens/settings_screen.dart';
import 'package:finance_app/widgets/side_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
  int _actualIndex = 0;
  final List<Widget> _screens = [
    HomePage(),
		ExpensesPage(),
    DashboardScreen(),
		SettingsPage()
	];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
      ),
      drawer: SideMenu(),
      body: _screens[_actualIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple[800],
        backgroundColor: Colors.purple[300],
        currentIndex: _actualIndex,
        onTap: onTabTapped,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.purple[300],
            icon: Icon(Icons.home_outlined),
            label: 'Página Inicial',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple[300],
            icon: Icon(Icons.monetization_on_outlined),
            label: 'Despesas',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple[300],
            icon: Icon(Icons.show_chart_sharp),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple[300],
            icon: Icon(Icons.settings_outlined),
            label: 'Configurações',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _actualIndex = index;
    });
  }
}

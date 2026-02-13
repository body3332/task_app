import 'package:flutter/material.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainWrapperState createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _currentIndex = 0;

  // قائمة بالصفحات اللي عملناها
  final List<Widget> _screens = [
    const HomeScreen(),
    const BeveragesScreen(), // ممكن تخليها صفحة Explore
    const HomeScreen(),      // صفحة Cart (كمثال)
    const HomeScreen(),      // صفحة Favourite (كمثال)
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF53B175), // اللون الأخضر بتاعنا
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.store_outlined), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.manage_search), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Account"),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Home Screen')),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Account Screen')),
    );
  }
}

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Beverages Screen')),
    );
  }
}
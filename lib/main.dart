import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Design',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          const SizedBox(height: 50),
          const CircleAvatar(
            radius: 50.0,
                backgroundImage: AssetImage('images/Man.jpg'),
          ),
          const SizedBox(height: 16),
          const Text(
            'Mamon Arab',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.message, color: Colors.black),
                onPressed: () {
                  // Add message functionality
                },
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const Icon(Icons.call, color: Colors.black),
                onPressed: () {
                  // Add call functionality
                },
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const Icon(Icons.settings, color: Colors.black),
                onPressed: () {
                  // Add settings functionality
                },
              ),
            ],
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
            indent: 32,
            endIndent: 32,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.dashboard, color: Colors.black),
                onPressed: () {
                  // Add dashboard functionality
                },
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const Icon(Icons.balance, color: Colors.black),
                onPressed: () {
                  // Add balancing functionality
                },
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const Icon(Icons.credit_card, color: Colors.black),
                onPressed: () {
                  // Add credit card functionality
                },
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const Icon(Icons.language, color: Colors.black),
                onPressed: () {
                  // Add language functionality
                },
              ),
              const SizedBox(width: 16),
              IconButton(
                icon: const Icon(Icons.visibility, color: Colors.black),
                onPressed: () {
                  // Add visibility functionality
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(
            color: Colors.white,
            thickness: 1,
            indent: 32,
            endIndent: 32,
          ),
          const SizedBox(height: 311),
          BottomNavigationBar(
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Person',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person_add),
                label: 'Person\'s',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            onTap: _onItemTapped,
          ),
        ],
      ),
    );
  }
}
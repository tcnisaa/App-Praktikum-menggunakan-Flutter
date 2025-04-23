import 'package:flutter/material.dart';
import '../screens/profile.dart';
import '../screens/home.dart';
class NavigationPage extends StatefulWidget {
const NavigationPage({super.key});
@override
State<NavigationPage> createState() => _NavigationPageState();
}
class _NavigationPageState extends State<NavigationPage> {
int _currentIndex = 0;
final List<Widget> _pages = [
const HomePage(),
const ProfilePage(),
];
void _onTabTapped(int index) {
setState(() {
_currentIndex = index;
});
}
@override
Widget build(BuildContext context) {
return Scaffold(
body: _pages[_currentIndex],
bottomNavigationBar: BottomNavigationBar(
currentIndex: _currentIndex,
onTap: _onTabTapped,
items: const [
BottomNavigationBarItem(
icon: Icon(Icons.home),
label: 'Home',
),
BottomNavigationBarItem(
icon: Icon(Icons.person),
label: 'Profile',
),
],
),
);

}
}
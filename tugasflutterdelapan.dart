import 'package:bywulan/day_13/day_14/about.dart';
import 'package:bywulan/day_13/day_14/tugasfluttertujuh.dart';
import 'package:flutter/material.dart';

class Tugasflutterdelapan extends StatefulWidget {
  const Tugasflutterdelapan({super.key});

  @override
  State<Tugasflutterdelapan> createState() => _TugasflutterdelapanState();
}

class _TugasflutterdelapanState extends State<Tugasflutterdelapan> {
  int _selectedBottom = 0;

  void changeBottom(int index) {
    _selectedBottom = index;
    print("Ini adalah value dari $_selectedBottom");
    setState(() {});
  }

  final List<Widget> _widgetOptions = [Tugasfluttertujuh(), About()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          changeBottom(value);
        },
        currentIndex: _selectedBottom,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded),
            label: "About",
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}

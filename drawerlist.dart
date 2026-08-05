import 'package:bywulan/Tugas%20Flutter/tugaslist.dart';
import 'package:bywulan/Tugas%20Flutter/tugaslistmodel.dart';
import 'package:bywulan/Tugas%20Flutter/tugaslistofmap.dart';
import 'package:bywulan/extension/navigator.dart';
import 'package:flutter/material.dart';

class drawerlist extends StatefulWidget {
  const drawerlist({super.key});

  @override
  State<drawerlist> createState() => _drawerlistState();
}

class _drawerlistState extends State<drawerlist> {
  int _selectedBottom = 0;
  void changeBottom(int index) {
    _selectedBottom = index;
    print("Ini adalah value dari $_selectedBottom");
    setState(() {});
    context.pop();
  }

  final List<Widget> _widgetOptions = [
    Tugaslist(),
    Tugaslistofmap(),
    Tugaslistmodel(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Perabot Rumah")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.list),
              title: Text("List"),
              onTap: () {
                changeBottom(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.list_outlined),
              title: Text("List Of Map"),
              onTap: () {
                changeBottom(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.list_sharp),
              title: Text("List Model"),
              onTap: () {
                changeBottom(2);
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}

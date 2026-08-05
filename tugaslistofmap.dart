import 'package:flutter/material.dart';

class Tugaslistofmap extends StatelessWidget {
  Tugaslistofmap({super.key});

  List<Map<String, dynamic>> dataProduk = [
    {"nama": "Sofa", "harga": 3500000, "icon": Icons.chair},
    {"nama": "Meja Makan", "harga": 2800000, "icon": Icons.table_restaurant},
    {"nama": "Kursi", "harga": 450000, "icon": Icons.chair_alt},
    {"nama": "Tempat Tidur", "harga": 4200000, "icon": Icons.bed},
    {"nama": "Lemari Pakaian", "harga": 3100000, "icon": Icons.checkroom},
    {"nama": "Meja Belajar", "harga": 1200000, "icon": Icons.desk},
    {"nama": "Rak Buku", "harga": 950000, "icon": Icons.menu_book},
    {"nama": "Lemari TV", "harga": 1800000, "icon": Icons.tv},
    {"nama": "Meja Kopi", "harga": 750000, "icon": Icons.table_bar},
    {"nama": "Rak Sepatu", "harga": 650000, "icon": Icons.hiking},
    {"nama": "Meja Rias", "harga": 2100000, "icon": Icons.minor_crash_rounded},
    {"nama": "Kabinet Dapur", "harga": 5600000, "icon": Icons.kitchen},
    {"nama": "Rak Dinding", "harga": 350000, "icon": Icons.shelves},
    {"nama": "Nakas", "harga": 550000, "icon": Icons.night_shelter},
    {
      "nama": "Lemari Pajangan",
      "harga": 2700000,
      "icon": Icons.display_settings,
    },
    {"nama": "Bangku", "harga": 300000, "icon": Icons.event_seat},
    {"nama": "Meja Kerja", "harga": 1700000, "icon": Icons.desktop_windows},
    {"nama": "Rak Serbaguna", "harga": 850000, "icon": Icons.inventory_2},
    {"nama": "Lemari Penyimpanan", "harga": 2400000, "icon": Icons.inventory},
    {"nama": "Buffet", "harga": 3900000, "icon": Icons.weekend},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dataProduk.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            tileColor: index % 2 == 0 ? Colors.amberAccent : Colors.cyanAccent,
            leading: Icon(dataProduk[index]["icon"]),
            title: Text(dataProduk[index]["nama"]),
            subtitle: Text("Rp ${dataProduk[index]["harga"]}"),
          );
        },
      ),
    );
  }
}

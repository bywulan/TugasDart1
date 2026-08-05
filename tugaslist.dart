import 'package:flutter/material.dart';

class Tugaslist extends StatelessWidget {
  Tugaslist({super.key});

  List<String> namaPerabotRumah = [
    "Sofa",
    "Meja Makan",
    "Kursi",
    "Tempat Tidur",
    "Lemari Pakaian",
    "Meja Belajar",
    "Rak Buku",
    "Lemari TV",
    "Meja Kopi",
    "Rak Sepatu",
    "Meja Rias",
    "Kabinet Dapur",
    "Rak Dinding",
    "Nakas",
    "Lemari Pajangan",
    "Bangku",
    "Meja Kerja",
    "Rak Serbaguna",
    "Lemari Penyimpanan",
    "Buffet",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: namaPerabotRumah.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(namaPerabotRumah[index]);
        },
      ),
    );
  }
}

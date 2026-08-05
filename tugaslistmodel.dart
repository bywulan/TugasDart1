import 'package:flutter/material.dart';

class NamaPerabotRumah {
  final String nama;
  final String gambar;
  final String deskripsi;

  NamaPerabotRumah({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
  });
}

class Tugaslistmodel extends StatelessWidget {
  Tugaslistmodel({super.key});

  List<NamaPerabotRumah> dataProduk = [
    NamaPerabotRumah(
      nama: "Sofa",
      gambar: "assets/images/sofa.jpg",
      deskripsi: "Bahan : Kayu jati & kain linen. Merek: Informa.",
    ),
    NamaPerabotRumah(
      nama: "Meja Makan",
      gambar: "assets/images/sofa.jpg",
      deskripsi: "Bahan: Kayu mahoni. Merek: Olympic.",
    ),
    NamaPerabotRumah(
      nama: "Kursi",
      gambar: "assets/images/kursi.jpg",
      deskripsi: "Bahan: Kayu jati. Merek: IKEA.",
    ),
    NamaPerabotRumah(
      nama: "Tempat Tidur",
      gambar: "assets/images/tempattidur.jpg",
      deskripsi: "Bahan: Kayu solid. Merek: Olympic.",
    ),
    NamaPerabotRumah(
      nama: "Lemari Pakaian",
      gambar: "assets/images/lemaripakaian.jpg",
      deskripsi: "Bahan: Particle board. Merek: IKEA.",
    ),
    NamaPerabotRumah(
      nama: "Meja Belajar",
      gambar: "assets/images/mejabelajar.jpg",
      deskripsi: "Bahan: MDF dan rangka besi. Merek: Informa.",
    ),
    NamaPerabotRumah(
      nama: "Rak Buku",
      gambar: "assets/images/rakbuku.jpg",
      deskripsi: "Bahan: Kayu pinus. Merek: IKEA.",
    ),
    NamaPerabotRumah(
      nama: "Lemari TV",
      gambar: "assets/images/lemaritv.jpg",
      deskripsi: "Bahan: MDF dan kaca tempered. Merek: Informa.",
    ),
    NamaPerabotRumah(
      nama: "Meja Kopi",
      gambar: "assets/images/mejakopi.jpg",
      deskripsi: "Bahan: Kayu oak. Merek: IKEA.",
    ),
    NamaPerabotRumah(
      nama: "Rak Sepatu",
      gambar: "assets/images/raksepatu.jpg",
      deskripsi: "Bahan: Plastik ABS dan besi. Merek: Napolly.",
    ),
    NamaPerabotRumah(
      nama: "Meja Rias",
      gambar: "assets/images/mejarias.jpg",
      deskripsi: "Bahan: MDF dan kaca. Merek: Olympic.",
    ),
    NamaPerabotRumah(
      nama: "Kabinet Dapur",
      gambar: "assets/images/kabinetdapur.jpg",
      deskripsi: "Bahan: Kayu lapis tahan air. Merek: TACO.",
    ),
    NamaPerabotRumah(
      nama: "Rak Dinding",
      gambar: "assets/images/rakdinding.jpg",
      deskripsi: "Bahan: Kayu pinus. Merek: IKEA.",
    ),
    NamaPerabotRumah(
      nama: "Nakas",
      gambar: "assets/images/nakas.jpg",
      deskripsi: "Bahan: Kayu mahoni. Merek: Informa.",
    ),
    NamaPerabotRumah(
      nama: "Lemari Pajangan",
      gambar: "assets/images/lemaripajangan.jpg",
      deskripsi: "Bahan: Kayu jati dan kaca. Merek: Olympic.",
    ),
    NamaPerabotRumah(
      nama: "Bangku",
      gambar: "assets/images/bangku.jpg",
      deskripsi: "Bahan: Kayu solid. Merek: Napolly.",
    ),
    NamaPerabotRumah(
      nama: "Meja Kerja",
      gambar: "assets/images/mejakerja.jpg",
      deskripsi: "Bahan: MDF dan rangka besi. Merek: IKEA.",
    ),
    NamaPerabotRumah(
      nama: "Rak Serbaguna",
      gambar: "assets/images/rakserbaguna.jpg",
      deskripsi: "Bahan: Besi dan MDF. Merek: Informa.",
    ),
    NamaPerabotRumah(
      nama: "Lemari Penyimpanan",
      gambar: "assets/images/lemarisimpan.jpg",
      deskripsi: "Bahan: Particle board. Merek: Olympic.",
    ),
    NamaPerabotRumah(
      nama: "Buffet",
      gambar: "assets/images/buffet.jpg",
      deskripsi: "Bahan: Kayu jati. Merek: Informa.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dataProduk.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            elevation: 3,
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  dataProduk[index].gambar,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                dataProduk[index].nama,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(dataProduk[index].deskripsi),
              ),
              trailing: const Icon(Icons.arrow_back),
            ),
          );
        },
      ),
    );
  }
}

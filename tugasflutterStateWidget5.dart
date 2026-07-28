import 'package:flutter/material.dart';
// void main() => runApp(Tugasflutter5());

class Tugasflutter5 extends StatefulWidget {
  const Tugasflutter5({super.key});

  @override
  State<Tugasflutter5> createState() => _Tugasflutter5State();
}

class _Tugasflutter5State extends State<Tugasflutter5> {
  bool showText = false;
  bool isFavorite = false;
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lab Interaksi Flutter",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Center(
        // padding: EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini tentang ElevatedButton"),

            // ElevatedButton
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showText = !showText;
                });
              },
              child: Text("Klik Saya!"),
            ),
            if (showText)
              Text("Memiliki Efek bayangan Melayang dan Siap Merespon Tekanan"),

            SizedBox(height: 20),

            Text("Ini tentang IconButton"),

            // IconButton
            IconButton(
              iconSize: 30.0,
              icon: Icon(Icons.favorite),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
            Text(isFavorite ? "Sudah Jadi Favorit" : "Bukan Favorit"),

            SizedBox(height: 20),
            Text("Ini tentang TextButton"),

            // TextButton
            TextButton(
              onPressed: () {
                setState(() {
                  showText = !showText;
                });
              },
              child: Text(
                "Lihat Deskripsi",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (showText)
              Text(
                "Hanya Berupa Teks Yang Bisa Diklik Tanpa memiliki Latar Belakang ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

            SizedBox(height: 20),

            Text("Ini tentang InkWell"),

            // InkWell
            InkWell(
              onTap: () {
                ("Sentuhan terdeteksi");
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Anda Berhasil")));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 300,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Sentuh Kotak Ini",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),

            Text("Ini GestureDetector"),

            // GestureDetector
            GestureDetector(
              onTap: () {
                setState(() {
                  counter += 1;
                });
                ("Ditekan sekali");
              },
              onDoubleTap: () {
                setState(() {
                  counter += 2;
                });
                ("Ditekan dua kali");
              },
              onLongPress: () {
                setState(() {
                  counter += 3;
                });
                ("Tahan lama");
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 300,

                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Angka: $counter",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter--;
          });
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}

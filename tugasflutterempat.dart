import 'package:flutter/material.dart';

class Tugasflutterempat extends StatelessWidget {
  const Tugasflutterempat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TURKISH ACADEMY",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: const Color.fromARGB(255, 189, 27, 54),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 250, 248),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text(
                    "DAFTAR BELAJAR",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),

                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.book_online),
                      hintText: "Pilih Materi",
                      filled: true,
                      fillColor: const Color.fromARGB(255, 250, 47, 47),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.arrow_upward_rounded),
                      hintText: "Level Pembelajaran",
                      filled: true,
                      fillColor: const Color.fromARGB(255, 250, 47, 47),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      hintText: "Nama Siswa",
                      filled: true,
                      fillColor: const Color.fromARGB(255, 250, 47, 47),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key),
                      hintText: "Target Belajar",
                      filled: true,
                      fillColor: const Color.fromARGB(255, 250, 47, 47),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.note_add),

                      hintText: "Catatan Progress",
                      filled: true,
                      fillColor: const Color.fromARGB(255, 250, 47, 47),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "RIWAYAT BELAJAR",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(height: 15),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.gesture_outlined, color: Colors.white),
              ),
              title: Text(
                "Salam Dasar",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("꩜ Level A1 Selesai 10 Menit Yang Lalu"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.gesture_outlined, color: Colors.white),
              ),
              title: Text(
                "Angka 1-100",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("꩜ Level A1 Selesai 1 Jam Yang Lalu"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.gesture_outlined, color: Colors.white),
              ),
              title: Text(
                "Perkenalan Diri",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("꩜ Level A1 Selesai 1 Minggu Yang Lalu"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.gesture_outlined, color: Colors.white),
              ),
              title: Text(
                "Percakapan di Restoran",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("꩜ Level A1 Selesai 1 Minggu Yang Lalu"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}

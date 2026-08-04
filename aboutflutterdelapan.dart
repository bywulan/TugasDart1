import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _aboutState();
}

class _aboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ABOUT",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),

      drawer: null,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Center(child: Icon(Icons.info, color: Colors.blue)),
            SizedBox(height: 20),

            Text(
              "Aplikasi ini digunakan untuk mengelola data pengguna dan pendaftaran. Menggunakan fitur Drawer dan Bottom Navigation.",
            ),

            SizedBox(height: 20),
            Text("Pembuat : Tri Wulan"),
            Text("Versi : 1.0.0"),
          ],
        ),
      ),
    );
  }
}

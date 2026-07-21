import 'package:flutter/material.dart';

class Flutter1 extends StatelessWidget {
  const Flutter1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Profil Saya"),
        centerTitle: true,
        actions: [Text("1"), Text("2")],
        leading: Icon(Icons.arrow_back),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children: [
          Text(
            "Tri Wulan Agustin",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.location_on), Text("Jakarta Timur")],
          ),

          Text(
            "Seorang peserta pelatihan yang sedang mendalami Flutter di PPKD",
            style: TextStyle(
              fontSize: 13,
              fontStyle: FontStyle.italic,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

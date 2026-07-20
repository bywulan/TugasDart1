/*
  Ini adalah tugas pertama saya untuk membuat klub buku digital anggota klub.
  Program ini dibuat untuk menyimpan dan menampilkan anggota klub.
*/

// menyimpan nama anggota klub
String nama = "Tri Wulan Agustin";

// menyimpan umur anggota klub
int umur = 30;

// menyimpan tinggi anggota klub
double tinggiBadan = 1.65;

// menyimpan status aktif kenggotaan klub
bool statusAktif = true;

// menyimpan daftar buku favorit anggota klub
List<String> daftarBukuFavorit = ["Hujan", "Laskar Pelangi", "Bumi Manusia"];

// menyimpan informasi tambahan anggota klub seperti alamat, profesi
Map<String, dynamic> infoTambahan = {
  "alamat": "Kp. Pisangan, Jakarta Timur",
  "profesi": "App Developer",
};

/// untuk menampilkan fungsi tampilkan biodata
void main() {
  print("tampilkanBiodata");
  print("Nama: $nama");
  print("Umur: $umur");
  print("Tinggi Badan: $tinggiBadan");
  print("Status Aktif: $statusAktif");
  print("Daftar Buku Favorit: $daftarBukuFavorit");
  print("Info Tambahan: $infoTambahan");
}

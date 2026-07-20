void main() {
  for (int i = 1; i < 20; i++)
    if (i % 2 != 0) {
      print(i);
    }

  for (int i = 1; i <= 5; i++) print("*");

  int i = 1;
  while (i <= 4) {
    print("Aisyah $i");
    i++;
  }

  List<String> buah = ['Apel', 'Jeruk', 'Mangga', 'Anggur'];
  for (var n in buah) {
    print("Saya suka $n");
  }

  List<String> belanja = ["Beras", "Minyak", "Gula", "Garam"];
  for (String item in belanja) {
    int nomor = 1;

    print("item ke-$nomor $item");
    nomor++;
  }
}

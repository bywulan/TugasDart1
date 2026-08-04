import 'package:flutter/material.dart';

class Tugasfluttertujuh extends StatefulWidget {
  const Tugasfluttertujuh({super.key});

  @override
  State<Tugasfluttertujuh> createState() => _TugasfluttertujuhState();
}

class _TugasfluttertujuhState extends State<Tugasfluttertujuh> {
  bool _isAgreed = false;
  bool _isDarkMode = false;
  String _selectedCategory = 'Elektronik';
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  final ScrollController _scrollController = ScrollController();
  final GlobalKey _keySyarat = GlobalKey();
  final GlobalKey _keyMode = GlobalKey();
  final GlobalKey _keyKategori = GlobalKey();
  final GlobalKey _keyTanggal = GlobalKey();
  final GlobalKey _keyPengingat = GlobalKey();

  final List<Widget> _widgetOptions = [Tugasfluttertujuh()];

  final List<String> _categories = [
    'Elektronik',
    'Pakaian',
    'Makanan',
    'Lainnya',
  ];

  void _scrollToWidget(GlobalKey key) {
    Navigator.pop(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final context = key.currentContext;
      if (context != null) {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _pickTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  String _formatDate(DateTime? date) {
    if (date == null) return "Tanggal Lahir: Belum dipilih";
    String day = date.day.toString().padLeft(2, '0');
    String month = date.month.toString().padLeft(2, '0');
    return "Tanggal Lahir: $day-$month-${date.year}";
  }

  String _formatTime(TimeOfDay? time) {
    if (time == null) return "Pengingat diatur pada: Belum diatur";
    String hour = time.hour.toString().padLeft(2, '0');
    String minute = time.minute.toString().padLeft(2, '0');
    return "Pengingat diatur pada: $hour:$minute";
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = _isDarkMode ? Colors.black : Colors.white;
    Color textColor = _isDarkMode ? Colors.white : Colors.black;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Interaktif"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              child: Text(
                'INTERACTIVE NAVIGATION',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.assignment_turned_in),
              title: const Text('Syarat & Ketentuan'),
              onTap: () => _scrollToWidget(_keySyarat),
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text('Mode Tampilan'),
              onTap: () => _scrollToWidget(_keyMode),
            ),
            ListTile(
              leading: const Icon(Icons.category),
              title: const Text('Kategori Produk'),
              onTap: () => _scrollToWidget(_keyKategori),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Pilih Tanggal'),
              onTap: () => _scrollToWidget(_keyTanggal),
            ),
            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text('Atur Pengingat'),
              onTap: () => _scrollToWidget(_keyPengingat),
            ),
          ],
        ),
      ),

      body: Container(
        color: backgroundColor,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          controller: _scrollController,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                key: _keySyarat,
                child: CheckboxListTile(
                  title: const Text("Saya menyetujui persyaratan"),
                  value: _isAgreed,
                  onChanged: (bool? value) {
                    setState(() {
                      _isAgreed = value ?? false;
                    });
                  },
                ),
              ),
              const SizedBox(height: 10),

              Card(
                key: _keyMode,
                child: SwitchListTile(
                  title: const Text("Aktifkan Mode Gelap"),
                  value: _isDarkMode,
                  onChanged: (bool value) {
                    setState(() {
                      _isDarkMode = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 10),

              Card(
                key: _keyKategori,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Kategori Produk:"),
                      DropdownButton<String>(
                        value: _selectedCategory,
                        items: _categories.map((String category) {
                          return DropdownMenuItem<String>(
                            value: category,
                            child: Text(category),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setState(() {
                              _selectedCategory = newValue;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),

              Card(
                key: _keyTanggal,
                child: ListTile(
                  leading: const Icon(Icons.calendar_month),
                  title: const Text("Tanggal Lahir"),
                  trailing: ElevatedButton(
                    onPressed: () => _pickDate(context),
                    child: const Text("Pilih Tanggal"),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              Card(
                key: _keyPengingat,
                child: ListTile(
                  leading: const Icon(Icons.alarm),
                  title: const Text("Waktu Pengingat"),
                  trailing: ElevatedButton(
                    onPressed: () => _pickTime(context),
                    child: const Text("Atur Waktu"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 10),

              Text(
                "Ringkasan Status / Pilihan:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                  color: _isDarkMode ? Colors.grey[800] : Colors.grey[100],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _isAgreed
                          ? "• Pendaftaran Tersedia"
                          : "• Pendaftaran belum tersedia",
                      style: TextStyle(
                        color: _isAgreed ? Colors.green : Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "• Mode Tampilan: ${_isDarkMode ? 'Gelap' : 'Terang'}",
                      style: TextStyle(color: textColor),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "• Anda memilih kategori: $_selectedCategory",
                      style: TextStyle(color: textColor),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "• ${_formatDate(_selectedDate)}",
                      style: TextStyle(color: textColor),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "• ${_formatTime(_selectedTime)}",
                      style: TextStyle(color: textColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

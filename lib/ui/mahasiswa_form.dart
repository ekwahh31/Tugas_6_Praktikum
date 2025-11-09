import 'package:flutter/material.dart';
import 'package:praktikum/ui/mahasiswa_detail.dart';

class MahasiswaForm extends StatefulWidget {
  const MahasiswaForm({Key? key}) : super(key: key);

  @override
  _MahasiswaFormState createState() => _MahasiswaFormState();
}

class _MahasiswaFormState extends State<MahasiswaForm> {
  final _NamaController = TextEditingController();
  final _NIMController = TextEditingController();
  final _TahunLahirController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Mahasiswa'),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 2,
        titleTextStyle: const TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _textboxNamaMahasiswa(),
            const SizedBox(height: 16),
            _textboxNIMMahasiswa(),
            const SizedBox(height: 16),
            _textboxTahunLahirMahasiswa(),
            const SizedBox(height: 30),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxNamaMahasiswa() {
    return TextField(
      controller: _NamaController,
      decoration: InputDecoration(
        labelText: "Nama",
        prefixIcon: const Icon(Icons.person),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
      ),
    );
  }

  _textboxNIMMahasiswa() {
    return TextField(
      controller: _NIMController,
      decoration: InputDecoration(
        labelText: "NIM",
        prefixIcon: const Icon(Icons.badge),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
      ),
    );
  }

  _textboxTahunLahirMahasiswa() {
    return TextField(
      controller: _TahunLahirController,
      decoration: InputDecoration(
        labelText: "Tahun Lahir",
        prefixIcon: const Icon(Icons.calendar_today),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
      ),
    );
  }

  _tombolSimpan() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          String nama = _NamaController.text;
          String nim = _NIMController.text;
          String tahunLahir = _TahunLahirController.text;

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  MahasiswaDetail(nama: nama, nim: nim, tahunLahir: tahunLahir),
            ),
          );
        },
        child: const Text(
          'Simpan',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
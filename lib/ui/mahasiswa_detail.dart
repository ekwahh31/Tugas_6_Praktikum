import 'package:flutter/material.dart';

class MahasiswaDetail extends StatelessWidget {
  final String nama;
  final String nim;
  final String tahunLahir;

  const MahasiswaDetail({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Mahasiswa"),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 2,
        titleTextStyle: const TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.lightBlueAccent, width: 2),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildInfoRow(Icons.person, "Nama", nama),
              const SizedBox(height: 20),
              _buildInfoRow(Icons.badge, "NIM", nim),
              const SizedBox(height: 20),
              _buildInfoRow(Icons.calendar_today, "Tahun Lahir", tahunLahir),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.lightBlueAccent, size: 24),
        const SizedBox(width: 12),
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Text(
          " : ",
          style: TextStyle(fontSize: 16),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
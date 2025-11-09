# TUGAS 6 PERTEMUAN 8 PRAKTIKUM PEMOGRAMAN MOBILE
# Screenshoot Aplikasi
<img width="498" height="1122" alt="image" src="https://github.com/user-attachments/assets/4da90614-2fe0-47a6-9fa2-bcd2b0874bf4" />
<img width="494" height="1123" alt="image" src="https://github.com/user-attachments/assets/296760ea-e0b1-417a-82e8-7444fadf9341" />

# Penjelasan Proses Passing Data dari Form Menuju Tampilan 
1. Pengguna mengisi form untuk Nama, NIM, dan Tahun Lahir lalu datanya disimpan pada ``TextEditingController``. Controller berfungsi sebagai wadah sementara.
```
final _NamaController = TextEditingController();
final _NIMController = TextEditingController();
final _TahunLahirController = TextEditingController();
```
2. Lalu pengguna menekan tombol "Simpan", maka sistem akan mengambil data dari controller menggunakan ``,text``, lalu data disimoan dengan variable string:
```
String nama = _NamaController.text;
String nim = _NIMController.text;
String tahunLahir = _TahunLahirController.text;
```
3. lalu ``Navigator.push()`` membuka halaman baru dan mengirim data melalui contructor MahasiswaDetail sebagai parameter dan MaterialPageRoute mengatur transisi antar halaman.
```
Navigator.push(
  MaterialPageRoute(
    builder: (context) => MahasiswaDetail(
      nama: nama,
      nim: nim,
      tahunLahir: tahunLahir
    ),
  ),
);
```
4. Lalu data diterima sebagai parameter ``required`` di contructor dan disimpan dalam variable ``final``:
```
final String nama;
final String nim;
final String tahunLahir;
```
5. Terakhir data ditampilkan menggunakan widget Text
```
Text(nama)  // Menampilkan nama
Text(nim)   // Menampilkan NIM
Text(tahunLahir)  // Menampilkan tahun lahir
```

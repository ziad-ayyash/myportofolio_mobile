Nama : Muhammad Ziad Ayyash

NPM : 2506594364

Kelas : PBP C

---

## Tugas 8

1. Tampilan pengguna bergantung pada _route_  teratas di dalam _stack route_ yang dikelola oleh `Navigator`. Perbedaan antara metode `push()`, `pop()`, dan `pushReplacement()` terlihat pada tabel berikut.
   | _Method_ | Operasi |
   | -------- | ------- |
   | Navigator.push() | **Menambahkan** suatu route ke atas stack route, yang menyebabkan _route_ tersebut ditampilkan ke pengguna. |
   | Navigator.pop() | **Menghapus** route teratas pada stack route (route yang sedang ditampilkan kepada pengguna), sehingga tampilan berpindah dari route yang sedang ditampilkan kepada pengguna ke route yang berada di bawahnya pada stack route. |
   | Navigator.pushReplacement() | **Menggantikan** route teratas pada stack route dengan route baru yang diberikan. |

   Pada Kartu aksi, _routing_ ke formulir dilakukan dengan `Navigator.push()`. Kita ingin menambahkan _route_ ke atas _stack route_, bukan menggantinya. Hal ini supaya dapat dilakukan aksi _back_/_return_ menggunakan `Navigator.pop()`.

   Pada _left drawer_, opsi _Home_ membawa pengguna kembali ke halaman utama menggunakan `Navigator.pushReplacement()`.

2. Scaffold menyediakan struktur visual dasar halaman, seperti `AppBar` dan `Drawer`. Menggunakan `Scaffold`, aplikasi akan secara konsisten memiliki `AppBar` yang disertai _drawer_ pada bagian atas halaman untuk menampilkan judul halaman dan keperluan navigasi. Setiap halaman tinggal mengkonfigurasi `Scaffold` untuk menerima objek _widget drawer_ pada _field `drawer`_, dan mengatur warna dan teks `AppBar` pada _field `appbar`_.

   `ColorScheme` yang telah dikonfigurasi di `main.dart` dapat digunakan oleh halaman - halaman aplikasi. Contohnya pada `AppBar` _Home Page_ yang menggunakan `Theme.of(context).colorScheme.primary` serta kartu aksi yang secara _default_ menggunakan `Theme.of(context).colorScheme.secondary`.

3. Tata letak untuk formulir tersebut dipilih untuk meningkatkan keterbacaan bagi pengguna. _Field_ formulir ditata memanjang kebawah sesuai alur manusia membaca, yaitu dari atas ke bawah.

   Halaman dibuat dapat digulir ke bawah menggunakan widget `SingleChildScrollView` supaya halaman dapat memuat semua _field_ formulir dengan ukuran yang mudah dibaca, bahkan saat ukuran layar sempit. Antar _field_ diberi jarak menggunakan widget `Padding` supaya _field_ formulir tertata rapi dan tidak saling tumpang tindih.

4. Pada formulir, `GlobalKey<FormState>` digunakan untuk mengidentifikasi _widget_ formulir dan mengambil `FormState`nya. Saat menekan tombol '_Save_', `FormState` tersebut akan memanggil `validate()`; _method_ milik `FormState` yang akan memvalidasi tiap `FormField` pada formulir sesuai dengan `validator` masing - masing `Formfield`. `validator` sendiri merupakan sebuah atribut `Function` pada `FormField` yang mengembalikan `String` pesan yang ditentukan apabila gagal memenuhi syarat yang ditentukan, atau mengembalikan `null` jika isi `FormField` dianggap valid.

## AI USAGE
Tugas ini dikerjakan tanpa menggunakan AI, dengan referensi sebagai berikut.

- [**Tutorial 09**](https://pbp.cs.ui.ac.id/tutorial/tutorial-9.html) | 
  Referensi utama untuk implementasi formulir, dan referensi tambahan untuk menjawab pertanyaan reflektif.

- [**Dokumentasi Flutter API**](https://api.flutter.dev/) |
   Referensi untuk [implementasi _field_ waktu](https://api.flutter.dev/flutter/material/showDatePicker.html) pada formulir menggunakan `showDatePicker()`, serta referensi tambahan untuk menjawab pertanyaan reflektif [perihal `GlobalKey`](https://api.flutter.dev/flutter/widgets/GlobalKey-class.html).

## PREVIOUS ASSIGNMENTS
- [Tugas #1](./pertanyaan%20reflektif/tugas01.md)
- [Tugas #2](./pertanyaan%20reflektif/tugas02.md)
- [Tugas #3](./pertanyaan%20reflektif/tugas03.md)
- [Tugas #4](./pertanyaan%20reflektif/tugas04.md)
- [Tugas #5](./pertanyaan%20reflektif/tugas05.md)
- [Tugas #6](./pertanyaan%20reflektif/tugas06.md)
- [Tugas #7](./pertanyaan%20reflektif/tugas07.md)
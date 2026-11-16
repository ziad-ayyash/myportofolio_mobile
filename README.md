Nama : Muhammad Ziad Ayyash

NPM : 2506594364

Kelas : PBP C

---

## Tugas 7

1. _Widget tree_ merupakan representasi logis dari semua widget milik UI. Hubungan induk-anak _(parent-child)_ antar-widget yaitu sang widget _parent_ akan mewarisi sifatnya ke widget _child_-nya. Mirip seperti DOM _(Document Object Model)_ pada HTML.

2. _Widget_ bawaan yang digunakan pada proyek ini beserta fungsinya adalah sebagai berikut.
   | Widget | Fungsionalitas |
   | ------ | -------------- |
   | `MaterialApp` | _Root widget_ yang menyediakan _Material Design_ |
   | `Scaffold` | Struktur visual dasar halaman. |
   | `AppBar` | Tampilan bar bagian atas halaman aplikasi. |
   | `Padding` | Memberikan inset tertentu bagi _child_-nya. |
   | `SizedBox` | Menampilkan _box_ dengan ukuran tertentu; di sini digunakan sebagai pemisah. |
   | `Container` | Pembungkus yang membantu mengatur penampilan, ukuran, dan posisi _child_-nya. |
   | `Column` | Menata letak _children_-nya secara flex dengan arah vertikal. |
   | `Row` | Menata letak _children_-nya secara flex dengan arah horizontal. |
   | `Center` | Memposisikan _child_-nya di tengah dirinya. |
   | `GridView` | Menampilkan kartu tombol dalam tata letak kisi 3 kolom. |
   | `StatelessWidget` | Mewariskan sifat widget statis kepada subclassnya. |
   | `InkWell` | Pembungkus yang menangani tekanan tombol dan menampilkan visual tombol. |
   | `ScaffoldMessenger` | Menyediakan API untuk menampilkan `SnackBar`. |
   | `SnackBar` | Menampilkan pesan saat terjadi _event_ tertentu; di sini saat tombol di tekan. |
   | `Icon` | Menampilkan ikon yang ditentukan. |
   | `Text` | Menampilkan teks yang ditentukan. |

   serta _Widget_ buatan beserta fungsinya adalah sebagai berikut.
   | Widget | Fungsionalitas |
   | ------ | -------------- |
   | `MyApp` | Membuat root _widget_ `MaterialApp` yang sudah terkonfigurasi. |
   | `MyHomePage` | UI yang pertama ditampilkan kepada pengguna. |
   | `InfoCard` | Menampilkan kartu yang berisi informasi seperti nama, npm, dan kelas. |
   | `ItemCard` | Menampilkan kartu tombol dengan nama, ikon, dan warna tertentu yang menampilkan pesan dengan `SnackBar` ketika dipencet. |

3. _MaterialApp_ adalah suatu widget praktis yang membungkus sejumlah widget yang umumnya diperlukan untuk aplikasi dengan _Material Design_ milik Google. Tak hanya itu, _MaterialApp_ mengkonfigurasi top-level Navigator, dan juga mengkonfigurasi `WidgetsApp.textStyle` miliknya dengan warna merah atau kuning kontras yang bertujuan untuk memberi peringatan pada _developer_ bahwa _app_ mereka belum mendefinisikan _text style default_.

   Fungsionalitas ini membuat _MaterialApp_ menjadi widget yang umumnya digunakan sebagai _root widget_ pada aplikasi Flutter.

4. `StatelessWidget` adalah _widget_ yang tidak membutuhkan _state_ yang dapat berubah. Sedangkan, `StatefulWidget` adalah _widget_ yang memiliki _state_ yang dapat berubah seiring _lifetime_-nya.
   Oleh karena itu, `StatelessWidget` cocok digunakan untuk merepresentasikan bagian _user interface_ yang tidak dipengaruhi apapun selain informasi konfigurasi objek itu sendiri dan `BuildContext`. Sedangkan `StatefulWidget` cocok digunakan untuk merepresentasikan bagian _user interface_ yang dapat berubah secara dinamis; misal pembaruan informasi yang ditampilkan.

5. Dalam Flutter, `BuildContext` merupakan suatu objek yang mereferensikan lokasi suatu widget di dalam _widget tree_. Hal ini penting karena dengan mengetahui posisi suatu widget di dalam hirarki, widget tersebut dapat menerima warisan sifat _parent_-nya.
   
   Umumnya dalam method `build()`, `BuildContext` menyediakan informasi konfigurasi untuk 'konstelasi' _widget_ baru yang akan dibuat dan dikembalikan.

6. _Hot reload_ akan memuat perubahan kode ke dalam VM dan membangun ulang _widget tree_. Saat melakukan _hot reload_, _state_ aplikasi tidak hilang karena _hot reload_ tidak menjalankan ulang `main()` ataupun `initState()`; Berbeda dengan _hot restart_ yang menghilangkan _state_ aplikasi karena me-_restart_ aplikasi Flutter.

   Situasi di mana _hot reload_ saja tidak cukup, dan harus melakukan _hot restart_ atau _full restart_ adalah sebagai berikut.

   - **App terhenti/mati**: Misal karena aplikasi terlalu lama dibiarkan jalan di _background_.
   
   - **Perubahan pada `builder` milik `CupertinoTabView`**: Melakukan _hot reload_ tidak cukup untuk menampakkan perubahan pada `builder` milik `CupertinoTabView`.
   
   - **Perubahan pada _Enumerated Types_**: Melakukan _hot reload_ tidak cukup untuk menampakkan perubahan yang mengganti _enumerated type_ menjadi _regular class_ dan sebaliknya.
   
   - **Perubahan pada _Generic types_**: Melakukan _hot reload_ tidak cukup untuk menampakkan perubahan yang mengganti deklarasi tipe _generic_ pada suatu _class_.

   - **Perubahan pada _native code_**: Untuk menampakkan perubahan pada _native code_, misal Kotlin, Java, Swift, atau Objective-C, perlu dilakukan _full restart_.

   - **Perubahan pada _Global variables_ & _Static fields_**: _Global variable_ dan _static field_ dianggap bagian dari _state_ aplikasi karena hanya diinisialisasi pada saat Flutter app dijalankan, sehingga perlu dilakukan _hot restart_ atau _full restart_ untuk menampakkan perubahannya.

   - **Perubahan pada kode yang dijalankan pada saat awal eksekusi aplikasi**: Umumnya perubahan pada kode `main()` atau `initState()`; _hot reload_ tidak cukup untuk menampakkan perubahan karena membangun ulang _widget tree_ tidak memanggil ulang kedua _method_ tersebut.


## AI USAGE
Tugas ini dikerjakan tanpa menggunakan AI, dengan referensi sebagai berikut.

- [**Tutorial 08**](https://pbp.cs.ui.ac.id/tutorial/tutorial-8.html) | 
  Referensi utama untuk set up proyek Flutter.

- [**Tugas Individu 07**](https://pbp.cs.ui.ac.id/assignments/individual/tugas-7.html) | 
   Referensi cara membuat tombol warna - warni.

- [**Dokumentasi Flutter API**](https://api.flutter.dev) | 
   Referensi untuk menjawab pertanyaan reflektif perihal [fungsionalitas dan cara kerja _widget_](https://api.flutter.dev/flutter/widgets) dan [definisi `BuildContext`](https://api.flutter.dev/flutter/widgets/BuildContext-class.html).

- [**Medium.com**](https://medium.com/@dihsar/understanding-flutter-buildcontext-a-guide-for-developers-367579309f3a) |
   Referensi untuk menjawab pertanyaan reflektif perihal definisi `BuildContext`.

- [**Dokumentasi Flutter**](https://docs.flutter.dev/tools/hot-reload#special-cases) |
   Referensi untuk menjawab pertanyaan reflektif perihal kasus ketidakcukupan melakukan _hot reload_.

- [**PPT SCELE Materi 09 - Intro to Dart and Flutter**](https://scele.cs.ui.ac.id/mod/resource/view.php?id=226059) | 
   Referensi tambahan untuk menjawab pertanyaan reflektif.

## PREVIOUS ASSIGNMENTS
- [Tugas #1](./pertanyaan%20reflektif/tugas01.md)
- [Tugas #2](./pertanyaan%20reflektif/tugas02.md)
- [Tugas #3](./pertanyaan%20reflektif/tugas03.md)
- [Tugas #4](./pertanyaan%20reflektif/tugas04.md)
- [Tugas #5](./pertanyaan%20reflektif/tugas05.md)
- [Tugas #6](./pertanyaan%20reflektif/tugas06.md)
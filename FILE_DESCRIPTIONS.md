# File Descriptions

Ringkasan singkat fungsi dari file-file penting di proyek ppmtask.

- **[lib/widgets/profile_info.dart](lib/widgets/profile_info.dart)** — Widget presentasi kecil untuk menampilkan ikon, label, dan nilai dalam satu baris. Widget utama: `ProfileInfo`. Dipakai untuk baris informasi seperti email, hobi, dan website di halaman profil.

- **[lib/utils/constants.dart](lib/utils/constants.dart)** — Tempat menyimpan konstanta aplikasi yang dapat dipakai di seluruh proyek. Contoh: `AppConstants.appName`.

- **[lib/services/dummy_service.dart](lib/services/dummy_service.dart)** — Sumber data tiruan (mock) untuk pengembangan dan demo. Menyediakan `DummyService.sample`, sebuah instance `Profile` contoh.

- **[lib/models/profile.dart](lib/models/profile.dart)** — Model data `Profile` yang merepresentasikan informasi pengguna: `name`, `nim`, `program`, `description`, `email`, `hobbies`, `website`, dan `avatarUrl`.

- **[lib/pages/profile_page.dart](lib/pages/profile_page.dart)** — Halaman UI profil. `ProfilePage` menampilkan avatar, nama, NIM, program studi, bagian "Tentang Saya", serta kartu detail yang menggunakan `ProfileInfo`.

- **[lib/main.dart](lib/main.dart)** — Entry point aplikasi Flutter. `main()` menjalankan `MyApp` yang mengatur `MaterialApp` dan menjadikan `ProfilePage` sebagai halaman awal.

---

Ingin saya tambahkan keterangan alur data singkat atau contoh penggunaan tiap file?

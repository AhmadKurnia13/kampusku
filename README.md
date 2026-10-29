# Kampusku - Aplikasi Akademik Mahasiswa UTB

Tugas Praktikum **Pemrograman Mobile II (IF-024)** - Pertemuan 3 (Inisiasi Project).

## Identitas Mahasiswa
- **Nama**: Ahmad Kurnia
- **NIM**: 24552011297
- **Kelas**: TIF RP 24E CNS
- **Semester**: 5

**Dosen Pengampu**: Sutani, S.T., M.T.
**Mata Kuliah**: Pemrograman Mobile II

FAKULTAS INDUSTRI KREATIF
DEPARTEMEN TEKNIK INFORMATIKA
UNIVERSITAS TEKNOLOGI BANDUNG
TAHUN 2026

---

## Analisis Kebutuhan Awal Proyek (Bagian J)

### 1. Pernyataan Masalah (Problem Statement)
Mahasiswa UTB menerima jadwal kuliah, tugas, dan pengumuman dari banyak saluran seperti portal akademik, grup WhatsApp, dan e-learning. Akibatnya informasi penting seperti perubahan ruangan atau tenggat waktu pengumpulan tugas mudah terlewat. Saat ini belum tersedia satu aplikasi mobile yang ringkas untuk menghimpun ketiganya sekaligus memberikan pengingat terpadu.

### 2. Persona Pengguna
- **Nama & Profil**: Rina — Mahasiswi Teknik Informatika semester 5, aktif berorganisasi, mobilitas tinggi di kampus.
- **Perangkat**: Smartphone Android menengah, sering berpindah jaringan Wi-Fi kampus dan data seluler.
- **Tujuan**: Melihat jadwal kuliah hari ini dengan cepat dan memantau daftar deadline tugas tanpa harus membuka banyak grup chat.
- **Masalah Utama**: Informasi pindah ruangan atau tugas tambahan sering tenggelam di grup WhatsApp.

### 3. Daftar Fitur (Metode MoSCoW)
| No | User Story | Fitur | Prioritas |
| :-: | :--- | :--- | :-: |
| 1 | Sebagai mahasiswa, saya ingin melihat jadwal kuliah hari ini agar tidak salah masuk kelas. | Daftar Jadwal Kuliah | **Must** |
| 2 | Sebagai mahasiswa, saya ingin mencatat tugas beserta tenggatnya agar tidak terlambat mengumpulkan. | Manajemen Tugas | **Must** |
| 3 | Sebagai mahasiswa, saya ingin membaca pengumuman akademik terbaru agar tahu perubahan jadwal. | Daftar Pengumuman | **Must** |
| 4 | Sebagai mahasiswa, saya ingin masuk dengan akun agar data tersimpan di cloud. | Autentikasi Login | **Should** |
| 5 | Sebagai mahasiswa, saya ingin tampilan mode gelap agar nyaman dibaca pada malam hari. | Dark Mode | **Could** |

---

## Struktur Folder (`lib/`)
```text
lib/
├── main.dart                  # Entry point & inisialisasi locale id_ID
├── app.dart                   # Konfigurasi MaterialApp & Tema
├── models/
│   └── mata_kuliah.dart       # Model data MataKuliah
├── screens/
│   └── beranda_screen.dart    # Halaman Beranda (Tanggal & Jadwal Kuliah)
├── widgets/                   # Komponen UI reusable
├── services/                  # Layanan data / API / Database
├── providers/                 # State management
└── utils/                     # Helper & konstanta
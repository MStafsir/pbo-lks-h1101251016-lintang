# PBO LKS — Portofolio Praktikum REST API Perpustakaan

## Identitas Mahasiswa
- **Nama Lengkap** : Muhammad Solihin Tafsir Sri Lintang
- **NIM** : H1101251016
- **Kelas** : B
- **Program Studi** : Sistem Informasi — FMIPA Universitas Tanjungpura
- **Mata Kuliah** : Pemrograman Berbasis Objek (PBO) — 3 SKS
- **Dosen Pengampu** : Syahru Rahmayuda, M.Kom
- **Repository GitHub** : [https://github.com/MStafsir/pbo-lks-h1101251016-lintang](https://github.com/MStafsir/pbo-lks-h1101251016-lintang)

## Daftar Pertemuan
- [x] Pertemuan 1 — Setup & Database (Langkah 1 s.d. 5)
- [x] Pertemuan 2 — Core OOP & CRUD Buku (Langkah 6 s.d. 9)
- [x] Pertemuan 3 — Validasi, Error Handling & Postman (Langkah 10 s.d. 11)
- [x] Pertemuan 4 — Skrip Uji Otomatis Backend (Langkah 12)
- [x] Pertemuan 5 — CRUD Kategori (Langkah 13 s.d. 15)
- [x] Pertemuan 6 — CORS & Frontend SPA Tailwind CSS (Langkah 16 s.d. 18)
- [x] Pertemuan 7 — Integrasi Penuh & Finalisasi Repository (Langkah 19 s.d. 20)

## Fitur Utama Proyek
1. **Backend REST API (`rest-api-perpustakaan/`)**:
   - Arsitektur berlapis (Models, Contracts/Interfaces, Repositories, Services, Controllers, Core Router & DI Container) dengan PSR-4 Autoloading dan prinsip SOLID.
   - Endpoint CRUD lengkap untuk `/api/books` dan `/api/categories` beserta validasi input (`422`), penanganan resource tidak ditemukan (`404`), dan dukungan CORS (`204 No Content`).
2. **Frontend Terpisah (`frontend-perpustakaan/`)**:
   - Single Page Application (SPA) berbasis Vanilla JavaScript ES Modules dan Tailwind CSS CDN.
   - Halaman **Dashboard** (statistik real-time & 5 buku terbaru), **Manajemen Buku**, dan **Manajemen Kategori** dengan modal CRUD serta notifikasi toast.

## Cara Menjalankan Proyek

### 1. Persiapan Database & Backend (Port 8000)
```bash
cd rest-api-perpustakaan
cp .env.example .env
composer dump-autoload -o
mysql -u root -p < database/schema.sql
php -S localhost:8000 -t public
```

### 2. Menjalankan Frontend (Port 3000)
Buka terminal kedua, lalu jalankan:
```bash
cd frontend-perpustakaan
php -S localhost:3000
```
Buka `http://localhost:3000` pada browser.

## Dokumentasi Screenshot per Pertemuan
- **Pertemuan 1**:
  - [Langkah 1 — Cek Lingkungan](pertemuan-01/langkah-01.png)
  - [Langkah 2 — Struktur Folder & Composer PSR-4](pertemuan-01/langkah-02.png)
  - [Langkah 3 — Konfigurasi .env & Skema Database](pertemuan-01/langkah-03.png)
  - [Langkah 4 — Env Loader & Connection PDO](pertemuan-01/langkah-04.png)
  - [Langkah 5 — Model, Interface & Repository Book](pertemuan-01/langkah-05.png)
- **Pertemuan 2**:
  - [Langkah 6 — BookService Logika Bisnis](pertemuan-02/langkah-06.png)
  - [Langkah 7 — Core Framework: Request, Response, Router, Container](pertemuan-02/langkah-07.png)
  - [Langkah 8 — BookController & Front Controller](pertemuan-02/langkah-08.png)
  - [Langkah 9 — Uji CRUD Buku dengan cURL](pertemuan-02/langkah-09.png)
- **Pertemuan 3**:
  - [Langkah 10 — Uji Validasi & Error Handling](pertemuan-03/langkah-10.png)
  - [Langkah 11 — Uji dengan Postman](pertemuan-03/langkah-11.png)
- **Pertemuan 4**:
  - [Langkah 12 — Skrip Uji Otomatis api_test.sh](pertemuan-04/langkah-12.png)
- **Pertemuan 5**:
  - [Langkah 13 — CRUD Kategori: Schema & Repository](pertemuan-05/langkah-13.png)
  - [Langkah 14 — CRUD Kategori: Service, Controller & Route](pertemuan-05/langkah-14.png)
  - [Langkah 15 — Uji CRUD Kategori](pertemuan-05/langkah-15.png)
- **Pertemuan 6**:
  - [Langkah 16 — Aktifkan CORS di Backend](pertemuan-06/langkah-16.png)
  - [Langkah 17 — Setup Frontend & Konfigurasi API](pertemuan-06/langkah-17.png)
  - [Langkah 18 — Halaman Dashboard & Buku](pertemuan-06/langkah-18.png)
- **Pertemuan 7**:
  - [Langkah 19 — Halaman Kategori & Integrasi Penuh](pertemuan-07/langkah-19.png)
  - [Langkah 20 — Finalisasi & Push Repository](pertemuan-07/langkah-20.png)
- **Screenshot Aplikasi Final**:
  - [Dashboard](screenshot-final/dashboard.png)
  - [Halaman Buku](screenshot-final/halaman-buku.png)
  - [Halaman Kategori](screenshot-final/halaman-kategori.png)

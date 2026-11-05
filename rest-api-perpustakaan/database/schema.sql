CREATE DATABASE IF NOT EXISTS perpustakaan
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE perpustakaan;

CREATE TABLE IF NOT EXISTS books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(255) NOT NULL,
    penulis VARCHAR(255) NOT NULL,
    tahun INT NOT NULL,
    stok INT NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Data awal buku (INSERT IGNORE agar aman dijalankan berulang kali tanpa duplikat)
INSERT IGNORE INTO books (id, judul, penulis, tahun, stok) VALUES
(1, 'Laskar Pelangi', 'Andrea Hirata', 2005, 5),
(2, 'Bumi Manusia', 'Pramoedya Ananta Toer', 1980, 3);

-- Tabel kategori (Langkah 13)
CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL UNIQUE,
    deskripsi TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Data awal kategori (INSERT IGNORE agar tidak Error 1062 Duplicate Entry saat dijalankan ulang)
INSERT IGNORE INTO categories (id, nama, deskripsi) VALUES
(1, 'Fiksi', 'Buku-buku fiksi dan novel'),
(2, 'Non-Fiksi', 'Buku non-fiksi, sains, sejarah');

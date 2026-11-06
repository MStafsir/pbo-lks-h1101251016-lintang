USE perpustakaan;

CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL UNIQUE,
    deskripsi TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

TRUNCATE TABLE categories;

INSERT INTO categories (id, nama, deskripsi) VALUES
(1, 'Fiksi', 'Buku-buku fiksi dan novel'),
(2, 'Non-Fiksi', 'Buku non-fiksi, sains, sejarah');

#!/bin/bash
# Skrip uji REST API menggunakan cURL (mendukung jq maupun fallback PHP otomatis)
BASE="http://localhost:8000/api/books"

format_json() {
    if command -v jq >/dev/null 2>&1; then
        jq
    else
        php -r '$d= json_decode(stream_get_contents(STDIN), true); echo json_encode($d, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES) . PHP_EOL;'
    fi
}

extract_id() {
    if command -v jq >/dev/null 2>&1; then
        jq -r '.data.id'
    else
        php -r '$d = json_decode(stream_get_contents(STDIN), true); echo $d["data"]["id"] ?? "";'
    fi
}

echo "== Test 1: GET semua buku =="
curl -s "$BASE" | format_json

echo -e "\n== Test 2: POST buku baru =="
NEW_ID=$(curl -s -X POST "$BASE" \
  -H "Content-Type: application/json" \
  -d '{"judul":"Bumi","penulis":"Tere Liye","tahun":2014,"stok":2}' \
  | extract_id)
echo "ID baru: $NEW_ID"

echo -e "\n== Test 3: GET buku ID $NEW_ID =="
curl -s "$BASE/$NEW_ID" | format_json

echo -e "\n== Test 4: PUT ubah buku =="
curl -s -X PUT "$BASE/$NEW_ID" \
  -H "Content-Type: application/json" \
  -d '{"judul":"Bumi (Revisi)","penulis":"Tere Liye","tahun":2015,"stok":3}' | format_json

echo -e "\n== Test 5: DELETE buku =="
curl -s -X DELETE "$BASE/$NEW_ID" | format_json

echo -e "\n== Test 6: Validasi error =="
curl -s -X POST "$BASE" \
  -H "Content-Type: application/json" \
  -d '{"judul":""}' | format_json

# data-analyst-bootchamp
Repository  berisi file-file yang dihasilkan sebagai portofolio dari bootcamp Data Analyst

## Tujuan Project
Project ini diadakan untuk menjawab pertanyaan bisnis dari Mini Project Sesi 5

## Data Set
Dataset berasal dari database thelook ecommerce yang ada di Google Bigquery

## Pertanyaan Bisnis
5
sql
output

1. Analisis Produk
Tim Product ingin mengetahui karakteristik produk yang dijual. Tampilkan nama produk,
kategori, department, merek, dan harga retail dari tabel products. Batasi hasil menjadi 20
produk pertama.
Materi: SELECT, FROM, LIMIT

SELECT
    name,
    category,
    department,
    brand,
    retail_price
FROM `bigquery-public-data.thelook_ecommerce.products`
LIMIT 20;

2. Identifikasi Produk Premium
Tim Marketing ingin menyiapkan kampanye untuk produk premium. Cari produk dengan
retail_price di atas 100. Tampilkan nama produk, kategori, merek, dan harga retail, lalu
urutkan dari harga tertinggi ke terendah.
Materi: WHERE, ORDER BY, DESC


# Insight

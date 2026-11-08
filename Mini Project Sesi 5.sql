--- 1. Analisis Produk Tim Product ingin mengetahui karakteristik produk yang dijual. Tampilkan nama produk, kategori, department, merek, dan harga retail dari tabel products. Batasi hasil menjadi 20 produk pertama. Materi: SELECT, FROM, LIMIT

select
    name as Product_Name,
    category,
    department,
    brand,
    retail_price
from `bigquery-public-data.thelook_ecommerce.products`
limit 20;

--- 2. Identifikasi Produk Premium, Tim Marketing ingin menyiapkan kampanye untuk produk premium. Cari produk dengan retail_price di atas 100. Tampilkan nama produk, kategori, merek, dan harga retail, lalu urutkan dari harga tertinggi ke terendah. Materi: WHERE, ORDER BY, DESC

select
    name as Product_Name,
    category,
    brand,
    department,
    retail_price
from `bigquery-public-data.thelook_ecommerce.products`
where retail_price > 100
order by retail_price DESC;

-- 3. Evaluasi Kategori Produk. Tim Product ingin mengetahui kategori dengan jumlah produk terbanyak. Hitung jumlah produk pada setiap kategori dari tabel products, lalu urutkan hasil dari jumlah produk terbesar. Materi: COUNT, GROUP BY, ORDER BY

select
  category,
  count(*) as Total_Product
from `bigquery-public-data.thelook_ecommerce.products`
group by category
order by Total_Product desc


-- 4. Mengenal Pelanggan dan Pesanan. Tim CRM ingin melihat pelanggan yang melakukan pemesanan. Gabungkan tabel users dan orders untuk menampilkan ID pesanan, status pesanan, tanggal pesanan dibuat, serta nama depan dan nama belakang pelanggan. Materi: INNER JOIN, ON, alias tabel

select
  o.order_id,
  o.status,
  o.created_at,
  u.first_name,
  u.last_name
from `bigquery-public-data.thelook_ecommerce.orders` as o
inner join `bigquery-public-data.thelook_ecommerce.users` as u
  on o.user_id = u.id

--5. Analisis Penjualan per Kategori Manajer bisnis ingin mengetahui kategori produk dengan nilai penjualan terbesar. Gabungkan tabel order_items dan products, lalu hitung total nilai penjualan berdasarkan kategori. Tampilkan kategori dan total penjualan, kemudian urutkan dari nilai terbesar. Gunakan order_items.sale_price sebagai nilai transaksi per item. Materi: JOIN, SUM, GROUP BY, ORDER BY

select
  o.category,
  sum(u.sale_price) as Total_Penjualan
from `bigquery-public-data.thelook_ecommerce.order_items` as u
join `bigquery-public-data.thelook_ecommerce.products` as o
  on u.product_id = o.id
group by o.category
order by Total_Penjualan desc
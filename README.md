
<div align="center">
<img width="150" alt="pangan" src="https://github.com/Rekaagustia/harga_pangan/assets/39205545/08255e8f-8598-436a-bd8b-dddd53e5d0c5.png">

# hargapangan
[![scrape_hargapangan](https://github.com/Rekaagustia/hargapangan/actions/workflows/r.yml/badge.svg)](https://github.com/Rekaagustia/hargapangan/actions/workflows/r.yml)

• [Tentang Data Pangan dan Scrapping](#memo-tentang-data-base-my-skincare)
• [Demo](#video_camera-demo)
• [Dokumentasi](#blue_book-dokumentasi)

</div>

## :bookmark_tabs: Main Menu

- [Tentang Data Pangan dan Scrapping](#memo-tentang-data-base-my-skincare)
- [Scrapping](#camera_flash-screenshot)
- [Demo](#video_camera-demo)
- [Dokumentasi](#blue_book-dokumentasi)
- [Deskripsi Data](#pencil-deskripsi-data)
- [Pengembang](#fireworks-anggota-tim-pengembang)

<div align="justify">
 
## :memo: Tentang Data Pangan dan Scrapping 
 
Pangan menurut Undang-Undang Republik Indonesia nomor 18 tahun 2012 adalah segala sesuatu yang berasal dari sumber hayati produk pertanian, perkebunan, kehutanan, perikanan, perternakan, perairan, dan air baik yang diolahmaupun tidak dioleh yang diperuntukkan sebagai makanan atau minuman bagi konsumsi manusia, termasuk nahan tangan pangan, bahan baku pangan, bahan lainnya yang digunakan dalam proses penyiapan,pengolahan, dan/atau pembuatan makanan atau minuman.
</div>

<div align="justify">
Scraping web adalah salah satu teknik pengambilan data semi terstruktur dari internet pada umumnya berupa halaman website dalam bahasa HTML atau XTML, untuk mempermudah mengambil data dari sebuah website secara otomatis tanpa perlu menyalin data secara manual dan menganalisa dokumen tersebut untuk diambil data tertentu dari halaman website yang digunakan untuk kepentingan lain. (Turland, 2010). 
</div>

<div align="justify">
Data yang digunakan pada project ini adalah harga pangan. Data tersebut diperoleh dari hasil scrapping dan google dengan link: https://hargapangan.id/
</div>

<div align="justify">



## :camera_flash: Screenshot
 
<div align="center">
<img width="500" alt="web pangan" src="https://github.com/Rekaagustia/hargapangan/assets/39205545/9966b047-46d8-4ec2-9e1a-7b3c7104b5ac">

 Harga pangan
 
 </div>
 
<div align="justify">
Tampilan ini menunjukkan data level harga pada tanggal observasi paling terkini dan perkembangan perubahan harga (pergerakan) komoditi tersebut selama 7 titik data secara series. Misal: harga cabai merah besar nasional per 16 Juni 2023 adalah Rp 44.300/kg. harga tersebut meningkat Rp 1000 dibandingkan hari sebelumnya. Grafik menunjukan fluktuasi perubahan harga 7 titik data terakhir. Pada menu ini, juga dapat dipilih untuk data sampai level provinsi, sedangkan untuk menu kota/kabupaten harus menuju pilihan menu harga kabupaten/kota.
</div>
 
## :video_camera: Demo
| url                           | login                  |
| ----------------------------- | ---------------------- |
|https://github.com/Rekaagustia | rekaagustiaa@gmail.com |



## :blue_book: Dokumentasi 
 berikut adalah dokumentasi  hasil Input (Create Methods) ke MongoDB Atlas.
 
 <div align="center">
  
 <img width="500" alt="mongo atlas" src="https://github.com/Rekaagustia/hargapangan/assets/39205545/8f111635-3ea7-4117-9eeb-1ddd5014ba8f">
  
 Tampilan MongoDB Atlas
  </div>
 
 ```
 
{"_id":{"$oid":"648c21edcf34c08bc304d852"},
 "Prov_id":"1",
 "Status":"Harga Tetap",
 "Jenis Pangan":"Beras Kualitas Bawah II",
 "Harga":"Rp12.000",
 "Denom":"Per kg",
 "Kenaikan (%)":"Harga Tetap"}

```

## :video_camera: Requirements
 
<div align="justify">
- Paket R yang digunakan:
* library(rvest) : Tools untuk scraping dengan cara parsing HTML dari suatu laman HTML. 
* library(tidyverse) : membantu dalam manajemen data terutama pada impor dan ekspor data, serta pemodelan dan visualisasi data. Dalam package ini memungkinkan penggunaan  
  operator pipes (%>%) untuk memudahkan dalam memahami script
* library(mongolite) : MongoDB client untuk R yang berbasis mongo-c-driver dan jsonlite. Package ini mendukung fungsi agregasi, indexing, map-reduce, streaming, enkripsi,
  autentikasi, serta GridFS.
* library(jsonlite) : untuk membaca file JSON
 berikut adalah tampilan data harga pangan yang sudah diproses : 
  </div>
 
  <div align="center">
   
 <img width="500" alt="tampilan data" src="https://github.com/Rekaagustia/hargapangan/assets/39205545/e0ef1feb-ffe9-4635-8b43-ef050aee210f">
   
  Data Harga Pangan
 </div>
 
 

## :pencil: Deskripsi Data
1. Beras: terdiri dari 6 kualitas beras berdasarkan level harga yaitu 2 jenis beras kualitas biasa/bawah, 2 jenis beras kualitas sedang, dan 2 jenis beras kualitas premium. Pemilihan jenis beras berdasarkan jenis yang paling banyak dikonsumsi masyarakat di kota/kabupaten lokasi sampel. Untuk harga beras kualitas biasa/bawah tidak termasuk beras raskin/rastra. Harga yang dilaporkan adalah harga per kg.
2. Bawang merah: hanya mancakup 1 kualitas bawang merah yaitu lokal dengan kualitas sedang. Harga yang dilaporkan adalah harga per kg.
3. Bawang putih: hanya 1 kualitas bawang putih yaitu bawang putih dalam bonggol kualitas sedang. Harga yang dilaporkan adalah harga per kg.
4. Cabai merah: terdiri dari 2 kualitas, yaitu cabai merah besar dan cabai merah keriting kualitas segar. Harga yang dilaporkan adalah harga per kg.
5. Cabai rawit: terdiri dari 2 kualitas, yaitu cabai rawit merah dan rawit hijau dengan kualitas segar. Harga yang dilaporkan adalah harga per kg.
6. Daging sapi: terdiri dari 2 kualitas, yaitu daging sapi has luar dan has dalam dengan kualitas segar. Harga yang dilaporkan adalah harga per kg.
7. Daging ayam ras: hanya 1 kualitas yaitu daging ayam ras tanpa jeroan dengan kualitas segar. Harga yang dilaporkan adalah harga per kg.
8. Telur ayam ras: hanya 1 kualitas yaitu telur ayam kualitas segar. Harga yang dilaporkan adalah harga per kg.
9. Gula pasir: teridiri dari 2 kualitas, yaitu kualitas lokal/curah warna kuning dan kualitas premium. Harga yang dilaporkan adalah harga per kg.
10. Minyak goreng: terdiri dari 3 kualitas, yaitu 1 kualitas lokal/curah dan 2 kualitas kemasan isi ulang. Harga yang dilaporkan adalah harga per liter.

## :fireworks: Pengembang
 Reka Agustia Astari    (G1501221010)

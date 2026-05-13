<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>M7_Bootstrap</title>
    <link rel="stylesheet" href="global.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  </head>
  <body>
    <nav class="navbar bg-body-tertiary">
      <div class="container">
        <a class="navbar-brand" href="#">
          <img src="Asset_Tugas/Logo1.png" alt="Bootstrap" width="50">
          <img src="Asset_Tugas/Logo1.png" alt="Bootstrap" width="50">
        </a>
        <ul class="nav justify-content-end">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.html" style="color: black; text-decoration: none;"><b>Produk</b></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Keranjang.html" style="color: grey; text-decoration: none;">Cart</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="toast-container">
      <div id="toast-sukses" class="toast align-items-center text-bg-success border-0" role="alert">
        <div class="d-flex">
          <div class="toast-body">✓ Produk berhasil ditambahkan ke keranjang!</div>
          <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"></button>
        </div>
      </div>
    </div>

    <!-- ISI -->
    <div class="container my-5">
      <h4 class="fw-bold mb-4">
          Hasil : <span id="jumlah-produk">10</span> Produk
      </h4>

      <div class="row align-items-start gx-4">
        <div class="col-lg-3">
          <div class="sidebar border rounded p-3">
            <div class="sidebar-title"><b>Kategori</b></div>
            <select class="form-select mb-4" id="filterKategori">
              <option value="Semua">Semua</option>
              <option value="Kaos">Kaos</option>
              <option value="Kemeja">Kemeja</option>
              <option value="Jaket">Jaket</option>
            </select>

            <div class="sidebar-title"><b>Jenis Kelamin</b></div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="gender" value="Semua" checked>
              <label class="form-check-label">Semua</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="gender" value="Pria">
              <label class="form-check-label">Pria</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="gender" value="Wanita">
              <label class="form-check-label">Wanita</label>
            </div>
            <div class="form-check mb-4">
              <input class="form-check-input" type="radio" name="gender" value="Anak">
              <label class="form-check-label">Anak</label>
            </div>

            <div class="sidebar-title"><b>Urutkan</b></div>
            <select class="form-select mb-4" id="sortHarga">
              <option value="default">Default</option>
              <option value="murah">Harga Termurah</option>
              <option value="mahal">Harga Termahal</option>
            </select>

            <button class="btn btn-danger w-100" onclick="filterProduk()">
              Terapkan Filter
            </button>
          </div>
        </div>

        <div class="col-lg-9">
          <div class="row g-3" id="daftar-produk">

            <div class="col-lg-3 col-md-6 produk-item"
                 data-kategori="Kaos" data-gender="Pria" data-harga="129000">
              <div class="card h-100">
                <img src="Asset_Tugas/Pria/Produk1.jpg" class="card-img-top" alt="Produk 1">
                <div class="card-body">
                  <button class="btn btn-dark w-100 mb-2">Kaos</button>
                  <p class="text-secondary small mb-1">Pria, XS-3XL</p>
                  <p class="fw-bold mb-2">T-Shirt Soft Touch Kerah Bulat Lengan Panjang</p>
                  <p class="harga-diskon">Rp129.000</p>
                  <p class="harga-coret">Rp199.000</p>
                  <button class="btn btn-dark w-100" style="margin-top: 20px;" onclick="tambahKeKeranjang('T-Shirt Soft Touch Kerah Bulat Lengan Panjang','Pria, XS-3XL',129000,'Asset_Tugas/Pria/Produk1.jpg')">Tambah ke Keranjang</button>
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-6 produk-item"
                 data-kategori="Jaket" data-gender="Pria" data-harga="399000">
              <div class="card h-100">
                <img src="Asset_Tugas/Pria/Produk2.jpg" class="card-img-top" alt="Produk 2">
                <div class="card-body">
                  <button class="btn btn-dark w-100 mb-2">Jaket</button>
                  <p class="text-secondary small mb-1">Pria, XS-3XL</p>
                  <p class="fw-bold mb-2">Jaket Ritsleting DRY-EX Proteksi Sinar UV</p>
                  <p class="harga-normal">Rp399.000</p>
                  <button class="btn btn-dark w-100" onclick="tambahKeKeranjang('Jaket Ritsleting DRY-EX Proteksi Sinar UV','Pria, XS-3XL',399000,'Asset_Tugas/Pria/Produk2.jpg')">Tambah ke Keranjang</button>
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-6 produk-item"
                 data-kategori="Kaos" data-gender="Pria" data-harga="199000">
              <div class="card h-100">
                <img src="Asset_Tugas/Pria/Produk3.jpg" class="card-img-top" alt="Produk 3">
                <div class="card-body">
                  <button class="btn btn-dark w-100 mb-2">Kaos</button>
                  <p class="text-secondary small mb-1">Pria, XS-3XL</p>
                  <p class="fw-bold mb-2">UT (T-Shirt) The Super Mario Galaxy Movie</p>
                  <p class="harga-normal">Rp199.000</p>
                  <button class="btn btn-dark w-100 mt-auto" onclick="tambahKeKeranjang('UT (T-Shirt) The Super Mario Galaxy Movie','Pria, XS-3XL',199000,'Asset_Tugas/Pria/Produk3.jpg')">Tambah ke Keranjang</button>
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-6 produk-item"
                 data-kategori="Jaket" data-gender="Pria" data-harga="699000">
              <div class="card h-100">
                <img src="Asset_Tugas/Pria/Produk4.jpg" class="card-img-top" alt="Produk 4">
                <div class="card-body">
                  <button class="btn btn-dark w-100 mb-2">Jaket</button>
                  <p class="text-secondary small mb-1">Pria, S-XL</p>
                  <p class="fw-bold mb-2">Jaket Coach Peanuts</p>
                  <p class="harga-diskon">Rp699.000</p>
                  <p class="harga-coret">Rp899.000</p>
                  <button class="btn btn-dark w-100 mt-auto" onclick="tambahKeKeranjang('Jaket Coach Peanuts','Pria, S-XL',699000,'Asset_Tugas/Pria/Produk4.jpg')">Tambah ke Keranjang</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row align-items-start gx-4">
        <div class="col-lg-3"></div>
        <div class="col-lg-9" style="margin-top: 30px;">
          <div class="row g-3" id="daftar-produk">

            <div class="col-lg-3 col-md-6 produk-item"
                 data-kategori="Kemeja" data-gender="Wanita" data-harga="349000">
              <div class="card h-100">
                <img src="Asset_Tugas/Wanita/Produk5.jpg" class="card-img-top" alt="Produk 1">
                <div class="card-body">
                  <button class="btn btn-dark w-100 mb-2">Kemeja</button>
                  <p class="text-secondary small mb-1">Wanita, XS-3XL</p>
                  <p class="fw-bold mb-2">Kemeja Body Denim</p>
                  <p class="harga-diskon">Rp349.000</p>
                  <button class="btn btn-dark w-100 mt-auto" onclick="tambahKeKeranjang('Kemeja Body Denim','Wanita, XS-3XL',349000,'Asset_Tugas/Wanita/Produk5.jpg')">Tambah ke Keranjang</button>
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-6 produk-item"
                 data-kategori="Kemeja" data-gender="Wanita" data-harga="349000">
              <div class="card h-100">
                <img src="Asset_Tugas/Wanita/Produk6.jpg" class="card-img-top" alt="Produk 2">
                <div class="card-body">
                  <button class="btn btn-dark w-100 mb-2">Kemeja</button>
                  <p class="text-secondary small mb-1">Wanita, XS-3XL</p>
                  <p class="fw-bold mb-2">Kemeja Oxford Boxy Lengan Pendek</p>
                  <p class="harga-normal">Rp349.000</p>
                  <button class="btn btn-dark w-100 mt-auto" onclick="tambahKeKeranjang('Kemeja Oxford Boxy Lengan Pendek','Wanita, XS-3XL',349000,'Asset_Tugas/Wanita/Produk6.jpg')">Tambah ke Keranjang</button>
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-6 produk-item"
                 data-kategori="Kaos" data-gender="Wanita" data-harga="129000">
              <div class="card h-100">
                <img src="Asset_Tugas/Wanita/Produk7.jpg" class="card-img-top" alt="Produk 3">
                <div class="card-body">
                  <button class="btn btn-dark w-100 mb-2">Kaos</button>
                  <p class="text-secondary small mb-1">Wanita, XS-3XL</p>
                  <p class="fw-bold mb-2">ALRISM Katun T-Shirt</p>
                  <p class="harga-normal">Rp129.000</p>
                  <p class="harga-coret">Rp199.000</p>
                  <button class="btn btn-dark w-100 mt-auto" onclick="tambahKeKeranjang('ALRISM Katun T-Shirt','Wanita, XS-3XL',129000,'Asset_Tugas/Wanita/Produk7.jpg')">Tambah ke Keranjang</button>
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-6 produk-item"
                 data-kategori="Jaket" data-gender="Wanita" data-harga="399000">
              <div class="card h-100">
                <img src="Asset_Tugas/Wanita/Produk8.jpg" class="card-img-top" alt="Produk 4">
                <div class="card-body">
                  <button class="btn btn-dark w-100 mb-2">Jaket</button>
                  <p class="text-secondary small mb-1">Wanita, S-XL</p>
                  <p class="fw-bold mb-2">Jaket Aktif Ultra Stretch Ritsleting</p>
                  <p class="harga-diskon">Rp399.000</p>
                  <p class="harga-coret">Rp499.000</p>
                  <button class="btn btn-dark w-100" style="margin-top: 20px;" onclick="tambahKeKeranjang('Jaket Aktif Ultra Stretch Ritsleting','Wanita, S-XL',399000,'Asset_Tugas/Wanita/Produk8.jpg')">Tambah ke Keranjang</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row align-items-start gx-4">
        <div class="col-lg-3"></div>
        <div class="col-lg-9" style="margin-top: 30px;">
          <div class="row g-3" id="daftar-produk">

            <div class="col-lg-3 col-md-6 produk-item"
                 data-kategori="Kaos" data-gender="Anak" data-harga="149000">
              <div class="card h-100">
                <img src="Asset_Tugas/Anak/Produk9.jpg" class="card-img-top" alt="Produk 1">
                <div class="card-body">
                  <button class="btn btn-dark w-100 mb-2">Kaos</button>
                  <p class="text-secondary small mb-1">Anak, 4-5Y (110cm)-14Y (160cm)</p>
                  <p class="fw-bold mb-2">KIDS Alrism Katun T-Shirt Garis Kerah Bulat</p>
                  <p class="harga-diskon">Rp149.000</p>
                  <button class="btn btn-dark w-100" style="margin-top: 20px;" onclick="tambahKeKeranjang('KIDS Alrism Katun T-Shirt Garis Kerah Bulat','Anak, 4-5Y–14Y',149000,'Asset_Tugas/Anak/Produk9.jpg')">Tambah ke Keranjang</button>
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-6 produk-item"
                 data-kategori="Kaos" data-gender="Anak" data-harga="349000">
              <div class="card h-100">
                <img src="Asset_Tugas/Anak/Produk10.jpg" class="card-img-top" alt="Produk 2">
                <div class="card-body">
                  <button class="btn btn-dark w-100 mb-2">Kaos</button>
                  <p class="text-secondary small mb-1">Anak, 4-5Y (110cm)-14Y (160cm)</p>
                  <p class="fw-bold mb-2">KIDS AlRism Katun T-Shirt Grafis Kerah Bulat</p>
                  <p class="harga-normal">Rp149.000</p>
                  <button class="btn btn-dark w-100 mt-auto" onclick="tambahKeKeranjang('KIDS AlRism Katun T-Shirt Grafis Kerah Bulat','Anak, 4-5Y–14Y',149000,'Asset_Tugas/Anak/Produk10.jpg')">Tambah ke Keranjang</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    

          <!-- PRODUK -->
          <div class="col-lg-9">
              <div class="row g-4" id="product-container">
              </div>
          </div>
      </div>

    <!-- FOOTER -->
    <div class="footer bg-body-tertiary">
      <div class="container text-center" style="padding-top: 30px;">
        <div class="row">
          <div class="col" style="text-align: left;">
            <div style="padding-bottom: 20px;">
              <img src="Asset_Tugas/Logo1.png" style="width: 50px;">
              <img src="Asset_Tugas/Logo2.png" style="width: 50px;">
            </div>
            <p style="font-size: 20px;"><b>UNIQIKILO Indonesia</b></p>
            <p style="font-size: 15px;">PT Fast Retailing Indonesia<br>
            Gedung Sopo Del Tower 1, Lantai 8<br>
            Jl. Jend. Sudirman No. 52-53, Jakarta 12190</p>
          </div>
          <div class="col" style="text-align: left;">
            <p style="font-size: 20px;"><b>Layanan Pelanggan</b></p>
            <p style="font-size: 15px;">Hubungi Kami</p>
            <p style="font-size: 15px;">Cara Berbelanja</p>
            <p style="font-size: 15px;">Pengiriman</p>
            <p style="font-size: 15px;">Pengembalian Produk</p>
            <p style="font-size: 15px;">Cek Status Pesanan</p>
          </div>
          <div class="col" style="text-align: left;">
            <p style="font-size: 20px;"><b>Ikuti Kami</b></p>
            <p style="font-size: 15px;">Instagram: @uniqikilo_id</p>
            <p style="font-size: 15px;">Facebook: UNIQIKILO Indonesia</p>
            <p style="font-size: 15px;">Tiktok: @uniqikilo.id</p>
            <p style="font-size: 15px;">Email: support@uniqikilo.co.id</p>
            <p style="font-size: 15px;">Customer Service: 1500-999</p>
          </div>
        </div>
        <hr>
      </div>
      <p style="text-align: center;">&copy; 2024 UNIQIKILO. All rights reserved.</p>
    </div>

    <script>
      function tambahKeKeranjang(nama, ukuran, harga, gambar) {
        let keranjang = JSON.parse(localStorage.getItem("keranjang")) || [];
 
        const indexAda = keranjang.findIndex(function(item) { return item.nama === nama; });
 
        if (indexAda !== -1) {
          keranjang[indexAda].qty += 1;
        } else {
          keranjang.push({ nama, ukuran, harga, gambar, qty: 1 });
        }
 
        localStorage.setItem("keranjang", JSON.stringify(keranjang));
 
        const toastEl = document.getElementById("toast-sukses");
        const toast = new bootstrap.Toast(toastEl, { delay: 2000 });
        toast.show();
 
        updateBadge();
      }
 
      // =============================================
      // UPDATE BADGE JUMLAH ITEM DI NAVBAR
      // =============================================
      function updateBadge() {
        const keranjang = JSON.parse(localStorage.getItem("keranjang")) || [];
        const totalItem = keranjang.reduce(function(total, item) { return total + item.qty; }, 0);
 
        const badge = document.getElementById("badge-cart");
        if (totalItem > 0) {
          badge.textContent = totalItem;
          badge.style.display = "inline";
        } else {
          badge.style.display = "none";
        }
      }
      
      function filterProduk() {
        const kategori = document.getElementById("filterKategori").value;
        const gender   = document.querySelector('input[name="gender"]:checked').value;
        const urut     = document.getElementById("sortHarga").value;
  
        const semuaProduk = document.querySelectorAll(".produk-item");
        let tampil = [];
  
        semuaProduk.forEach(function(p) {
          const cocokKategori = kategori === "Semua" || p.dataset.kategori === kategori;
          const cocokGender   = gender   === "Semua" || p.dataset.gender   === gender;
  
          if (cocokKategori && cocokGender) {
            p.style.display = "";
            tampil.push(p);
          } else {
            p.style.display = "none";
          }
        });
  
        if (urut === "murah" || urut === "mahal") {
          const container = document.getElementById("daftar-produk");
          tampil.sort(function(a, b) {
            return urut === "murah"
              ? a.dataset.harga - b.dataset.harga
              : b.dataset.harga - a.dataset.harga;
          });
          tampil.forEach(function(p) { container.appendChild(p); });
        }
  
        document.getElementById("jumlah-produk").textContent = tampil.length;
      }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
  </body>
</html>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>M7_Bootstrap</title>
    <link rel="stylesheet" href="global.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  </head>
  <body>
    <nav class="navbar bg-body-tertiary">
      <div class="container">
        <a class="navbar-brand" href="#">
          <img src="Asset_Tugas/Logo1.png" alt="Bootstrap" width="50">
          <img src="Asset_Tugas/Logo1.png" alt="Bootstrap" width="50">
        </a>
        <ul class="nav justify-content-end">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.html" style="color: grey; text-decoration: none;">Produk</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Keranjang.html" style="color: black; text-decoration: none;"><b>Cart</b></a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container my-5">
      <h4 class="fw-bold mb-4">Keranjang Belanja</h4>
 
      <!-- Tempat list produk keranjang -->
      <div id="cart-container"></div>
 
      <!-- Total & tombol kosongkan -->
      <div class="total-bar">
        <h4 id="total-harga">Total: Rp0</h4>
        <button class="btn btn-outline-danger" onclick="kosongkanKeranjang()">Kosongkan Keranjang</button>
      </div>
    </div>

    <!-- FOOTER -->
    <div class="footer bg-body-tertiary">
      <div class="container text-center" style="padding-top: 30px;">
        <div class="row">
          <div class="col" style="text-align: left;">
            <div style="padding-bottom: 20px;">
              <img src="Asset_Tugas/Logo1.png" style="width: 50px;">
              <img src="Asset_Tugas/Logo2.png" style="width: 50px;">
            </div>
            <p style="font-size: 20px;"><b>UNIQIKILO Indonesia</b></p>
            <p style="font-size: 15px;">PT Fast Retailing Indonesia<br>
            Gedung Sopo Del Tower 1, Lantai 8<br>
            Jl. Jend. Sudirman No. 52-53, Jakarta 12190</p>
          </div>
          <div class="col" style="text-align: left;">
            <p style="font-size: 20px;"><b>Layanan Pelanggan</b></p>
            <p style="font-size: 15px;">Hubungi Kami</p>
            <p style="font-size: 15px;">Cara Berbelanja</p>
            <p style="font-size: 15px;">Pengiriman</p>
            <p style="font-size: 15px;">Pengembalian Produk</p>
            <p style="font-size: 15px;">Cek Status Pesanan</p>
          </div>
          <div class="col" style="text-align: left;">
            <p style="font-size: 20px;"><b>Ikuti Kami</b></p>
            <p style="font-size: 15px;">Instagram: @uniqikilo_id</p>
            <p style="font-size: 15px;">Facebook: UNIQIKILO Indonesia</p>
            <p style="font-size: 15px;">Tiktok: @uniqikilo.id</p>
            <p style="font-size: 15px;">Email: support@uniqikilo.co.id</p>
            <p style="font-size: 15px;">Customer Service: 1500-999</p>
          </div>
        </div>
        <hr>
      </div>
      <p style="text-align: center;">&copy; 2024 UNIQIKILO. All rights reserved.</p>
    </div>
    
    <script>
              function tampilkanKeranjang() {
        const keranjang = JSON.parse(localStorage.getItem("keranjang")) || [];
        const container = document.getElementById("cart-container");
        container.innerHTML = ""; // Kosongkan dulu
 
        if (keranjang.length === 0) {
          // Tampilkan pesan keranjang kosong
          container.innerHTML = `
            <div class="kosong-container">
              <h5>Keranjang Kamu Kosong</h5>
              <p>Yuk Belanja Dulu Di Halaman Produk</p>
              <a href="index.html" class="btn btn-dark">Belanja Sekarang</a>
            </div>
          `;
          document.getElementById("total-harga").textContent = "Total: Rp0";
          return;
        }
 
        // Hitung total harga
        let total = 0;
 
        // Loop setiap item dan buat card-nya
        keranjang.forEach(function(item, index) {
          const subtotal = item.harga * item.qty;
          total += subtotal;
 
          const div = document.createElement("div");
          div.classList.add("cart-item");
          div.innerHTML = `
            <img src="${item.gambar}" alt="${item.nama}">
            <div class="cart-item-info">
              <p class="nama">${item.nama}</p>
              <p class="ukuran">${item.ukuran}</p>
              <p class="harga-satuan">Rp${item.harga.toLocaleString("id-ID")}</p>
              <div class="qty-control mt-2">
                <button onclick="ubahQty(${index}, -1)">-</button>
                <span class="qty-angka">${item.qty}</span>
                <button onclick="ubahQty(${index}, +1)">+</button>
              </div>
            </div>
            <div class="cart-item-kanan">
              <p class="subtotal">Rp${subtotal.toLocaleString("id-ID")}</p>
              <button class="btn btn-danger btn-sm" onclick="hapusItem(${index})">Hapus</button>
            </div>
          `;
          container.appendChild(div);
        });
 
        // Tampilkan total
        document.getElementById("total-harga").textContent =
          "Total: Rp" + total.toLocaleString("id-ID");
      }
 
      // =============================================
      // UBAH QUANTITY (+ atau -)
      // =============================================
      function ubahQty(index, perubahan) {
        let keranjang = JSON.parse(localStorage.getItem("keranjang")) || [];
        keranjang[index].qty += perubahan;
 
        // Kalau qty jadi 0 atau kurang, hapus item
        if (keranjang[index].qty <= 0) {
          keranjang.splice(index, 1);
        }
 
        localStorage.setItem("keranjang", JSON.stringify(keranjang));
        tampilkanKeranjang(); // Refresh tampilan
      }
 
      // =============================================
      // HAPUS SATU ITEM
      // =============================================
      function hapusItem(index) {
        let keranjang = JSON.parse(localStorage.getItem("keranjang")) || [];
        keranjang.splice(index, 1); // Hapus item di posisi index
        localStorage.setItem("keranjang", JSON.stringify(keranjang));
        tampilkanKeranjang();
      }
 
      // =============================================
      // KOSONGKAN SELURUH KERANJANG
      // =============================================
      function kosongkanKeranjang() {
        localStorage.removeItem("keranjang");
        tampilkanKeranjang();
      }
 
      // Jalankan saat halaman dibuka
      tampilkanKeranjang();
    </script>
</html>
* {
    margin: o;
    padding: 0;
}

.card-img-top {
    width: 100%;
    aspect-ratio: 3 / 4;
    object-fit: cover;
}

.card {
    height: 100%;
    border: 1px solid #e0e0e0;
    border-radius: 8px;
    overflow: hidden;
}

.card-body {
    display: flex;
    flex-direction: column;
}

.card-body .btn:last-child {
    margin-top: auto;
}

.harga-diskon {
    color: #dc3545;
    font-weight: bold;
    margin-bottom: 0;
    font-size: 15px;
}

.harga-coret {
    color: #aaaaaa;
    text-decoration: line-through;
    font-size: 13px;
    margin-bottom: 0;
}

.harga-normal {
    font-weight: bold;
    margin-bottom: 0;
    font-size: 15px;
}

/* KERANJANG */
.cart-item {
  display: flex;
  align-items: center;
  gap: 20px;
  padding: 20px 0;
  border-bottom: 1px solid #eee;
}

.cart-item img {
  width: 175px;
  height: 230px;
  object-fit: cover;
  border-radius: 4px;
  flex-shrink: 0;
}

.cart-item-info {
  flex: 1;
}

.cart-item-info .nama {
  font-weight: bold;
  font-size: 16px;
  margin-bottom: 4px;
}

.cart-item-info .ukuran {
  color: gray;
  font-size: 14px;
  margin-bottom: 4px;
}

.cart-item-info .harga-satuan {
  font-size: 14px;
  color: #333;
}

/* Kontrol qty: tombol - angka + */
.qty-control {
  display: flex;
  align-items: center;
  gap: 8px;
}

.qty-control button {
  width: 32px;
  height: 32px;
  border: 1px solid #ccc;
  background: white;
  border-radius: 4px;
  font-size: 16px;
  cursor: pointer;
  line-height: 1;
}

.qty-control button:hover {
    background: #f5f5f5;
}

.qty-angka {
  min-width: 30px;
  text-align: center;
  font-size: 15px;
}

/* Subtotal & tombol hapus */
.cart-item-kanan {
  text-align: right;
  flex-shrink: 0;
  min-width: 120px;
}

.cart-item-kanan .subtotal {
  font-weight: bold;
  font-size: 15px;
  margin-bottom: 8px;
}

/* Keranjang kosong */
.kosong-container {
  text-align: center;
  padding: 60px 0;
  color: gray;
}

/* Total & kosongkan */
.total-bar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-top: 20px;
  padding-top: 10px;
}

.total-bar h4 { font-weight: bold; margin: 0; }

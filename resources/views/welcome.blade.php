<!DOCTYPE html>
<html lang="id">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Aplikasi Layanan Sertifikat Tanah</title>
  <link rel="stylesheet" type="text/css" href="{{asset('depan/css/bootstrap.min.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('depan/fonts/line-icons.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('css/modern-ui.css')}}">
</head>

<body class="public-page">
  <nav class="navbar navbar-expand-lg fixed-top public-nav">
    <div class="container">
      <a href="/" class="navbar-brand d-flex align-items-center">
        <img src="{{asset('ATR.png')}}" alt="ATR BPN" style="max-width:40px;" class="mr-2">
        <span>BPN Kota Banjarbaru</span>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-navbar"
        aria-controls="main-navbar" aria-expanded="false" aria-label="Toggle navigation">
        <span class="lni-menu"></span>
      </button>
      <div class="collapse navbar-collapse" id="main-navbar">
        <ul class="navbar-nav ml-auto align-items-lg-center">
          <li class="nav-item"><a class="nav-link" href="#layanan">Layanan</a></li>
          <li class="nav-item"><a class="nav-link" href="#alur">Alur</a></li>
          <li class="nav-item ml-lg-3">
            <a class="btn btn-primary" href="{{Route('auth.login')}}">Login / Register</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <main>
    <section class="public-hero">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6">
            <span class="public-eyebrow">Layanan pertanahan digital</span>
            <h1 class="public-title">Aplikasi Layanan Pendaftaran dan Pengarsipan Sertifikat Tanah</h1>
            <p class="public-copy mt-3">
              Kelola permohonan, verifikasi, survei, pengarsipan, dan laporan pertanahan dalam satu sistem kerja yang rapi.
            </p>
            <div class="mt-4">
              <a href="{{Route('auth.login')}}" class="btn btn-primary btn-lg mr-2">Masuk Aplikasi</a>
              <a href="#alur" class="btn btn-secondary btn-lg">Lihat Alur</a>
            </div>
            <div class="public-stat">
              <div><strong>7</strong><span>Peran pengguna</span></div>
              <div><strong>2</strong><span>Jenis permohonan</span></div>
              <div><strong>1</strong><span>Arsip terpadu</span></div>
            </div>
          </div>
          <div class="col-lg-6 mt-5 mt-lg-0">
            <div class="public-panel">
              <img class="img-fluid" src="{{asset('hero.png')}}" alt="Ilustrasi layanan pertanahan">
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="layanan" class="public-section">
      <div class="container">
        <div class="row mb-4">
          <div class="col-lg-8">
            <h2 class="public-section-title">Layanan Utama</h2>
            <p class="public-copy">Fitur disusun untuk mendukung proses administrasi dari pendaftaran sampai dokumen selesai diarsipkan.</p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4 mb-4">
            <div class="service-card">
              <div class="icon"><i class="lni-files"></i></div>
              <h5>Permohonan Sertifikat</h5>
              <p class="mb-0 text-muted">Pendaftaran sertifikat bangunan dan tanah dengan status proses yang mudah dipantau.</p>
            </div>
          </div>
          <div class="col-md-4 mb-4">
            <div class="service-card">
              <div class="icon"><i class="lni-check-mark-circle"></i></div>
              <h5>Verifikasi Berjenjang</h5>
              <p class="mb-0 text-muted">Admin, peneliti, kasi, dan kepala kantor dapat memproses data sesuai perannya.</p>
            </div>
          </div>
          <div class="col-md-4 mb-4">
            <div class="service-card">
              <div class="icon"><i class="lni-archive"></i></div>
              <h5>Pengarsipan Berkas</h5>
              <p class="mb-0 text-muted">Dokumen selesai dapat disimpan berdasarkan rak dan digunakan untuk laporan.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="alur" class="public-section pt-0">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-5 mb-4 mb-lg-0">
            <h2 class="public-section-title">Alur Pelayanan</h2>
            <p class="public-copy">Setiap tahapan dibuat ringkas agar petugas dan pemohon bisa mengikuti status permohonan tanpa dokumen tercecer.</p>
          </div>
          <div class="col-lg-7">
            <div class="row">
              <div class="col-md-6 mb-4">
                <div class="step-card"><span class="step-number">1</span><h5>Daftar</h5><p class="text-muted mb-0">Pemohon membuat akun dan mengisi data awal.</p></div>
              </div>
              <div class="col-md-6 mb-4">
                <div class="step-card"><span class="step-number">2</span><h5>Ajukan</h5><p class="text-muted mb-0">Permohonan sertifikat dikirim untuk diverifikasi.</p></div>
              </div>
              <div class="col-md-6 mb-4">
                <div class="step-card"><span class="step-number">3</span><h5>Survei</h5><p class="text-muted mb-0">Petugas melengkapi data survei dan hasil lapangan.</p></div>
              </div>
              <div class="col-md-6 mb-4">
                <div class="step-card"><span class="step-number">4</span><h5>Arsip</h5><p class="text-muted mb-0">Berkas final disimpan dan dapat dicetak sebagai laporan.</p></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

  <footer class="py-4 bg-white border-top">
    <div class="container d-flex flex-column flex-md-row justify-content-between">
      <span>Aplikasi Layanan Pendaftaran dan Pengarsipan Sertifikat Tanah</span>
      <span class="text-muted">BPN Kota Banjarbaru</span>
    </div>
  </footer>

  <script src="{{asset('depan/js/jquery-min.js')}}"></script>
  <script src="{{asset('depan/js/popper.min.js')}}"></script>
  <script src="{{asset('depan/js/bootstrap.min.js')}}"></script>
</body>

</html>

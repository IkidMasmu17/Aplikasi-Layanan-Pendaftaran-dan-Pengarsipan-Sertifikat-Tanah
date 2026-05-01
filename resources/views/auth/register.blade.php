<!DOCTYPE html>
<html lang="id">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Register Pemohon</title>
  <link rel="stylesheet" type="text/css" href="{{asset('depan/css/bootstrap.min.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('depan/fonts/line-icons.css')}}">
  <link rel="stylesheet" type="text/css" href="{{asset('css/modern-ui.css')}}">
</head>

<body class="public-page">
  <nav class="navbar navbar-expand-lg fixed-top public-nav">
    <div class="container">
      <a href="{{route('welcome')}}" class="navbar-brand d-flex align-items-center">
        <img src="{{asset('ATR.png')}}" alt="ATR BPN" style="max-width:40px;" class="mr-2">
        <span>BPN Kota Banjarbaru</span>
      </a>
      <a class="btn btn-secondary" href="{{Route('auth.login')}}">Login</a>
    </div>
  </nav>

  <main class="auth-shell">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8">
          <div class="auth-card">
            <span class="public-eyebrow">Pendaftaran pemohon</span>
            <h1 class="mt-3">Buat akun pemohon</h1>
            <p class="text-muted mb-4">Lengkapi data identitas untuk mulai mengajukan permohonan.</p>
            @foreach ($errors->all() as $error)
            <div class="alert alert-danger">{{$error}}</div>
            @endforeach
            <form action="{{route('auth.storeRegister')}}" method="POST">
              @csrf
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="nip">NIK</label>
                    <input id="nip" type="text" class="form-control" name="nip" placeholder="Nomor Induk Kependudukan" required>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="nama">Nama Lengkap</label>
                    <input id="nama" type="text" class="form-control" name="nama" placeholder="Nama sesuai identitas" required>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="tempat_lahir">Tempat Lahir</label>
                    <input id="tempat_lahir" type="text" class="form-control" name="tempat_lahir" placeholder="Tempat lahir" required>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="tanggal_lahir">Tanggal Lahir</label>
                    <input id="tanggal_lahir" type="date" class="form-control" name="tanggal_lahir" required>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="jenis_kelamin">Jenis Kelamin</label>
                    <select name="jenis_kelamin" id="jenis_kelamin" class="form-control" required>
                      <option value="">Pilih jenis kelamin</option>
                      <option value="Laki-laki">Laki-laki</option>
                      <option value="Perempuan">Perempuan</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" type="text" class="form-control" name="username" placeholder="Username untuk login" required>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="alamat">Alamat</label>
                    <input id="alamat" type="text" class="form-control" name="alamat" placeholder="Alamat lengkap" required>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" type="password" class="form-control" name="password" placeholder="Password akun" required>
                  </div>
                </div>
              </div>
              <div class="d-flex flex-column flex-sm-row justify-content-between mt-3">
                <a href="{{route('welcome')}}" class="btn btn-secondary mb-2 mb-sm-0">Kembali</a>
                <button type="submit" class="btn btn-primary">Register</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </main>

  <script src="{{asset('depan/js/jquery-min.js')}}"></script>
  <script src="{{asset('depan/js/popper.min.js')}}"></script>
  <script src="{{asset('depan/js/bootstrap.min.js')}}"></script>
</body>

</html>

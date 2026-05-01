<!DOCTYPE html>
<html lang="id">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Login Aplikasi Sertifikat Tanah</title>
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
      <a class="btn btn-secondary" href="{{Route('auth.register')}}">Register</a>
    </div>
  </nav>

  <main class="auth-shell">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-8 col-lg-5">
          <div class="auth-card">
            <span class="public-eyebrow">Akses aplikasi</span>
            <h1 class="mt-3">Masuk ke akun</h1>
            <p class="text-muted mb-4">Gunakan username dan password yang sudah terdaftar.</p>
            <form action="{{route('auth.authenticate')}}" method="POST">
              @csrf
              <div class="form-group">
                <label for="username">Username</label>
                <input id="username" type="text" class="form-control" name="username" placeholder="Masukkan username" required autofocus>
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input id="password" type="password" class="form-control" name="password" placeholder="Masukkan password" required>
              </div>
              <div class="d-flex flex-column flex-sm-row justify-content-between mt-4">
                <a href="{{route('welcome')}}" class="btn btn-secondary mb-2 mb-sm-0">Kembali</a>
                <button type="submit" class="btn btn-primary">Login</button>
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

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="{{ asset('css/all.min.css') }}">
  <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
  <title>Bootstrap Template</title>
</head>

<body>
@include ('template.navbar')
  <section id="isi">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          @yield ('content')
        </div>
      </div>
    </div>
  </section>
@include ('template.footer')
</body>
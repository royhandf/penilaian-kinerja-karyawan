<?php 
    require '../../control.php';

    if (isset($_POST['tambah'])) {
        if (tambahSkala($_POST) > 0) {
            echo "
                <script>
                    alert('Data berhasil ditambahkan!');
                    document.location.href = '../data/dtskala.php';
                </script>
            ";
        } else {
            echo "
                <script>
                    alert('Data gagal ditambahkan!');
                    document.location.href = '../data/dtskala.php';
                </script>
            ";
        }
    }
?>

<!doctype html>
<html lang="en">

<head>
    <title>Form Tambah Skala</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<body>
    <div class="container mt-3">
        <h3 class="mb-3">Tambah Skala</h3>
        <form action="" method="POST">
            <div class="my-3">
                <label for="id_kriteria" class="form-label">Nama Skala</label>
                <input type="text" class="form-control" name="nama_skala" id="nama_skala"
                    placeholder="Masukkan Nama Skala">
            </div>
            <div class="my-3">
                <label for="value" class="form-label">Value</label>
                <input type="text" class="form-control" name="value" id="value" placeholder="Masukkan Value">
            </div>
            <div class="my-3">
                <button type="submit" class="btn btn-primary" name="tambah">Tambah</button>
                <a href="../data/dtskala.php" class="btn btn-danger">Batal</a>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
    </script>

</body>

</html>
<?php
    require 'control.php';

    $results = mysqli_query($con, "SELECT * FROM alternatif");

    if (isset($_POST['tambah'])) {
        if (tambahAlternatif($_POST) > 0) {
            echo "
                <script>
                    alert('Data berhasil ditambahkan!');
                    document.location.href = '/index.php?act=data-alternatif';
                </script>
            ";
        } else {
            echo "
                <script>
                    alert('Data gagal ditambahkan!');
                    document.location.href = '/index.php?act=data-alternatif';
                </script>
            ";
        }
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="Royhan Daffa" />
    <title>Dashboard</title>
    <link rel="stylesheet" href="/assets/dist/css/bootstrap.min.css" />
    <link href="/assets/dist/css/dashboard.css" rel="stylesheet" />
</head>

<body>
    <?php include 'view/partials/navbar.php' ?>

    <div class="container-fluid">
        <div class="row">
            <?php include 'view/partials/sidebar.php' ?>
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div
                    class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Data Alternatif</h1>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#modalTambahData">
                        Tambah
                    </button>
                </div>

                <div class="table-responsive">
                    <table class="table table-striped table">
                        <thead>
                            <tr>
                                <th scope="col">No.</th>
                                <th scope="col">Nama Alternatif</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1; ?>
                            <?php foreach($results as $result) : ?>
                            <tr>
                                <td width="10%"><?= $no++ ?></td>
                                <td width="50%"><?= $result['nama_alternatif']; ?></td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>

    <div class="modal fade" id="modalTambahData" tabindex="-1" aria-labelledby="modalTambahDataLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalTambahDataLabel">Tambah Data Alternatif</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <form method="POST">
                        <div class="mb-4">
                            <label class="form-label" for="nama">Nama Kriteria</label>
                            <input type="text" id="nama" name="nama" class="form-control" />
                        </div>
                        <button type="submit" class="btn btn-primary btn-block" name="tambah">Tambah</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="/assets/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
        integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous">
    </script>
    <script src="/assets/dist/js/dashboard.js"></script>
</body>

</html>
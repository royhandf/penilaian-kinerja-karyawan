<?php
    require 'control.php';

    $results = mysqli_query($con, "SELECT * FROM vmatriks_keputusan");
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

    <div class="container-fluid mt-3">
        <div class="row">
            <?php include 'view/partials/sidebar.php' ?>
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <h3 class="mb-3">Data Matriks Keputusan</h3>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">ID Alternatif</th>
                                <th scope="col">Nama Alternatif</th>
                                <th scope="col">ID Kriteria</th>
                                <th scope="col">Nama Kriteria</th>
                                <th scope="col">ID Bobot</th>
                                <th scope="col">Value</th>
                                <th scope="col">Nilai</th>
                                <th scope="col">Nama Skala</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1; ?>
                            <?php foreach ($results as $result) : ?>
                            <tr>
                                <th scope="row"><?= $no++; ?></th>
                                <td><?= $result['id_alternatif']; ?></td>
                                <td><?= $result['nama_alternatif']; ?></td>
                                <td><?= $result['id_kriteria']; ?></td>
                                <td><?= $result['nama_kriteria']; ?></td>
                                <td><?= $result['id_bobot']; ?></td>
                                <td><?= $result['value']; ?></td>
                                <td><?= $result['nilai']; ?></td>
                                <td><?= $result['nama_skala']; ?></td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>

    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
        integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous">
    </script>
    <script src="assets/dist/js/dashboard.js"></script>
</body>

</html>
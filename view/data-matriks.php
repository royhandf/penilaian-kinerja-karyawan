<?php
    require 'control.php';

    $results = mysqli_query($con, "SELECT a.*, b.value, s.nama_skala FROM matriks m, alternatif a, bobot b, skala s WHERE m.id_alternatif = a.id_alternatif AND m.id_bobot = b.id_bobot AND m.id_skala = s.id_skala ORDER BY a.nama_alternatif ASC");

    $alternatif = mysqli_query($con, "SELECT * FROM alternatif");
    $bobot = mysqli_query($con, "SELECT * FROM bobot");
    $skala = mysqli_query($con, "SELECT * FROM skala");
    
    if(isset($_POST['tambah'])) {
        if (tambahMatriks($_POST) > 0) {
            echo "
                <script>
                    alert('Data berhasil ditambahkan!');
                    document.location.href = '/index.php?act=data-matriks';
                </script>
            ";
        } else {
            echo "
                <script>
                    alert('Data gagal ditambahkan!');
                    document.location.href = '/index.php?act=data-matriks';
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
                    <h1 class="h2">Data Matriks</h1>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#modalTambahData">
                        Tambah
                    </button>
                </div>

                <div class="table-responsive">
                    <table class="table table-striped table">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Nama Alternatif</th>
                                <th scope="col">Value Bobot</th>
                                <th scope="col">Nama Skala</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1; ?>
                            <?php foreach($results as $result) : ?>
                            <tr>
                                <th scope="row"><?= $no++; ?></th>
                                <td><?= $result['nama_alternatif']; ?></td>
                                <td><?= $result['value']; ?></td>
                                <td><?= $result['nama_skala']; ?></td>
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
                    <h5 class="modal-title" id="modalTambahDataLabel">Tambah Data Matriks</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <form method="POST">
                        <div class="mb-4">
                            <label class="form-label" for="alternatif">Nama Alternatif</label>
                            <select class="form-select" name="alternatif" id="alternatif">
                                <option selected disabled>----</option>
                                <?php foreach($alternatif as $result) : ?>
                                <option value="<?= $result['id_alternatif'] ?>">
                                    <?= $result['nama_alternatif'] ?>
                                </option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="mb-4">
                            <label class="form-label" for="bobot">Value Bobot</label>
                            <select class="form-select" name="bobot" id="bobot">
                                <option selected disabled>----</option>
                                <?php foreach($bobot as $result) : ?>
                                <option value="<?= $result['id_bobot'] ?>"><?= $result['value'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="mb-4">
                            <label class="form-label" for="skala">Nama Skala</label>
                            <select class="form-select" name="skala" id="skala">
                                <option selected disabled>----</option>
                                <?php foreach($skala as $result) : ?>
                                <option value="<?= $result['id_skala'] ?>"><?= $result['nama_skala'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block" name="tambah">Tambah</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
        integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous">
    </script>
    <script src="/assets/dist/js/dashboard.js"></script>
</body>

</html>
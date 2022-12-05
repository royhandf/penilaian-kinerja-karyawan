<?php 
    require '../../control.php';

    if (isset($_POST['tambah'])) {
        if (tambahMatriks($_POST) > 0) {
            echo "
                <script>
                    alert('Data berhasil ditambahkan!');
                    document.location.href = '../data/dtmatrix.php';
                </script>
            ";
        } else {
            echo "
                <script>
                    alert('Data gagal ditambahkan!');
                    document.location.href = '../data/dtmatrix.php';
                </script>
            ";
        }
    }

    $alternatif = query("SELECT * FROM alternatif");
    $bobot = query("SELECT * FROM bobot");
    $skala = query("SELECT * FROM skala");
?>

<!doctype html>
<html lang="en">

<head>
    <title>Form Tambah Matriks</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<body>
    <div class="container mt-3">
        <h3 class="mb-3">Tambah Matriks</h3>
        <form action="" method="POST">
            <div class="my-3">
                <label for="id_alternatif" class="form-label">ID Alternatif</label>
                <select class="form-select" name="id_alternatif" id="id_alternatif">
                    <option selected disabled>---</option>
                    <?php foreach($alternatif as $a) : ?>
                    <option value="<?= $a['id_alternatif']; ?>">
                        <?= $a['id_alternatif']; ?> - <?= $a['nama_alternatif']; ?>
                    </option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="my-3">
                <label for="id_bobot" class="form-label">ID Bobot</label>
                <select class="form-select" name="id_bobot" id="id_bobot">
                    <option selected disabled>---</option>
                    <?php foreach($bobot as $b) : ?>
                    <option value="<?= $b['id_bobot']; ?>">
                        <?= $b['id_bobot']; ?> - <?= $b['value']; ?>
                    </option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="my-3">
                <label for="id_skala" class="form-label">ID Skala</label>
                <select class="form-select" name="id_skala" id="id_skala">
                    <option selected disabled>---</option>
                    <?php foreach($skala as $s) : ?>
                    <option value="<?= $s['id_skala']; ?>">
                        <?= $s['id_skala']; ?> - <?= $s['nama_skala']; ?>
                    </option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="my-3">
                <button type="submit" class="btn btn-primary" name="tambah">Tambah</button>
                <a href="../data/dtbobot.php" class="btn btn-danger">Batal</a>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
    </script>

</body>

</html>
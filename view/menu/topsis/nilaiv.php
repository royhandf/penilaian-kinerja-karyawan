<?php
require '../../../../control.php';

$results = mysqli_query($con, "SELECT * FROM topsis_nilaiv");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Nilai V</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body>
    <nav class="navbar navbar-expand-sm bg-white navbar-light shadow-sm fixed-top mb-3">
        <div class="container">
            <a class="navbar-brand " href="/si-penilaian-kerja/index.php">Penilaian</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#DataDropdown" aria-controls="DataDropdown"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="DataDropdown">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a href="/si-penilaian-kerja/index.php" class="nav-link active">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">Data</a>
                        <ul class="dropdown-menu">
                            <li>
                                <a class="dropdown-item" href="/si-penilaian-kerja/view/data/dtalternatif.php">Alternatif</a>
                                <a class="dropdown-item" href="/si-penilaian-kerja/view/data/dtbobot.php">Bobot</a>
                                <a class="dropdown-item" href="/si-penilaian-kerja/view/data/dtkriteria.php">Kriteria</a>
                                <a class="dropdown-item" href="/si-penilaian-kerja/view/data/dtskala.php">Skala</a>
                                <a class="dropdown-item" href="/si-penilaian-kerja/view/data/dtmatrix.php">Matriks</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">Menu</a>
                        <ul class="dropdown-menu">
                            <li>
                                <a class="dropdown-item" href="../normalisasi/result.php">Normalisasi</a>
                                <a class="dropdown-item" href="../terbobot/result.php">Terbobot</a>
                                <a class="dropdown-item" href="../maxmin/result.php">Nilai Max & Min</a>
                                <a class="dropdown-item" href="result.php">Nilai V</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">Method</a>
                        <ul class="dropdown-menu">
                            <li>
                                <a class="dropdown-item" href="/si-penilaian-kerja/index.php?metode=wp">WP</a>
                                <a class="dropdown-item" href="/si-penilaian-kerja/index.php?method=saw">SAW</a>
                                <a class="dropdown-item" href="/si-penilaian-kerja/index.php?method=topsis">TOPSIS</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="container mt-5 py-4">
        <h3 class="mb-3">Data Nilai V</h3>
        <table class="table">
            <thead class="table-dark">
                <tr>
                    <th scope="col">No</th>
                    <th>Dplus</th>
                    <th>Dmin</th>
                    <th>Nilai V</th>
                </tr>
            </thead>
            <tbody>
                <?php $no = 1; ?>
                <?php foreach ($results as $result) : ?>
                <tr>
                    <th scope="row"><?= $no++; ?></th>
                    <td><?= round($result['dplus'], 3); ?></td>
                    <td><?= round($result['dmin'], 3); ?></td>
                    <td><?= round($result['nilaiv'], 3); ?></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous">
    </script>

</body>

</html>
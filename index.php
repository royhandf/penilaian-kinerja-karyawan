<?php 

  if (isset($_GET['method'])) {
    $method = $_GET['method'];
  } else {
    $method = '';
  }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="Royhan Daffa" />
    <title>Penilaian Kinerja Karyawan</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/dashboard/" />
    <link rel="stylesheet" href="assets/dist/css/bootstrap.min.css" />
    <link href="dashboard.css" rel="stylesheet" />
    <style>
    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
    }

    @media (min-width: 768px) {
        .bd-placeholder-img-lg {
            font-size: 3.5rem;
        }
    }
    </style>


</head>

<body>
    <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
        <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="/">Penilaian Kinerja</a>
        <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
            aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search" />
        <div class="navbar-nav">
            <div class="nav-item text-nowrap">
                <a class="nav-link px-3" href="#">Sign out</a>
            </div>
        </div>
    </header>

    <div class="container-fluid">
        <div class="row">
            <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                <div class="position-sticky pt-3">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/">
                                <span data-feather="home"></span> Dashboard
                            </a>
                        </li>
                    </ul>

                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>List Data</span>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item">
                            <a class="nav-link" href="view/data/dtkriteria.php">
                                <span data-feather="file-text"></span> Kriteria
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/data/dtalternatif.php">
                                <span data-feather="file-text"></span> Alternatif
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/data/dtbobot.php">
                                <span data-feather="file-text"></span> Bobot
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/data/dtskala.php">
                                <span data-feather="file-text"></span> Skala
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/data/dtmatrix.php">
                                <span data-feather="file-text"></span> Matriks
                            </a>
                        </li>
                    </ul>

                    <?php if ($method == 'wp') : ?>
                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>Menu</span>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/wp/normalisasi.php?method=wp">
                                <span data-feather="file-text"></span> Normalisasi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/wp/pangkat.php?method=wp">
                                <span data-feather="file-text"></span> Nilai Pangkat
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/wp/nilais.php?method=wp">
                                <span data-feather="file-text"></span> Nilai S
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/wp/nilaiv.php?method=wp">
                                <span data-feather="file-text"></span> Nilai V
                            </a>
                        </li>
                    </ul>
                    <?php elseif ($method == 'saw') : ?>
                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>Menu</span>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/saw/matriks_keputusan.php?method=saw">
                                <span data-feather="file-text"></span> Matriks Keputusan
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/saw/normalisasi.php?method=saw">
                                <span data-feather="file-text"></span> Normalisasi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/saw/ranking.php?method=saw">
                                <span data-feather="file-text"></span> Perankingan
                            </a>
                        </li>
                    </ul>
                    <?php elseif ($method == 'topsis') : ?>
                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>Menu</span>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/topsis/normalisasi.php?method=topsis">
                                <span data-feather="file-text"></span> Normalisasi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/topsis/bobot.php?method=topsis">
                                <span data-feather="file-text"></span> Nilai Terbobot
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/topsis/maxmin.php?method=topsis">
                                <span data-feather="file-text"></span> Nilai Max & Min
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/topsis/nilaiv.php?method=topsis">
                                <span data-feather="file-text"></span> Nilai V
                            </a>
                        </li>
                    </ul>
                    <?php elseif ($method == 'multimoora') : ?>
                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>Menu</span>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/multimoora/pra_normalisasi.php?method=multimoora">
                                <span data-feather="file-text"></span> Pra-Normalisasi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/multimoora/normalisasi.php?method=multimoora">
                                <span data-feather="file-text"></span> Normalisasi
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/multimoora/bobot.php?method=multimoora">
                                <span data-feather="file-text"></span> Nilai Terbobot
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="view/menu/multimoora/ranking.php?method=multimoora">
                                <span data-feather="file-text"></span> Perankingan
                            </a>
                        </li>
                    </ul>
                    <?php endif; ?>

                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>Methods</span>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?method=wp">
                                <span data-feather="file-text"></span> WP
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?method=saw">
                                <span data-feather="file-text"></span> SAW
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?method=topsis">
                                <span data-feather="file-text"></span> TOPSIS
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?method=multimoora">
                                <span data-feather="file-text"></span> MULTIMOORA
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Dashboard</h1>
                </div>

            </main>
        </div>
    </div>

    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
        integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
    <script src="dashboard.js"></script>
</body>

</html>
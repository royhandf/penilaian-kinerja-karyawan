<?php 
    require_once __DIR__ . '/vendor/autoload.php';

    if (!isset($_GET['act'])) {
        require_once 'view/home.php';
    } else {
        switch ($_GET['act']) {
            case 'data-kriteria':
                require_once 'view/data-kriteria.php';
                break;
            case 'data-alternatif':
                require_once 'view/data-alternatif.php';
                break;
            case 'data-bobot':
                require_once 'view/data-bobot.php';
                break;
            case 'data-skala':
                require_once 'view/data-skala.php';
                break;
            case 'data-matriks':
                require_once 'view/data-matriks.php';
                break;
            case 'matriks-keputusan':
                require_once 'view/saw/matriks-keputusan.php';  
                break; 
            case 'normalisasi':
                require_once 'view/saw/normalisasi.php';
                break; 
            case 'perankingan':
                require_once 'view/saw/ranking.php';
                break;  
            default:
                http_response_code(404);
                break;
        }
    }
?>
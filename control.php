<?php 
    require 'config.php';

    function query($sql) {
        global $con;
            $result = mysqli_query($con, $sql);
        $rows = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $rows[] = $row;
        }
        return $rows;
    }

    function tambahAlternatif($data) {
        global $con;

        $nama = $data['nama'];
        mysqli_query($con, "INSERT INTO alternatif VALUES (null, '$nama')");

        return mysqli_affected_rows($con);
    }

    function tambahKriteria($data) {
        global $con;

        $nama = $data['nama'];
        mysqli_query($con, "INSERT INTO kriteria VALUES (null, '$nama')");

        return mysqli_affected_rows($con);
    }

    function tambahBobot($data) {
        global $con;

        $id_kriteria = $data['id'];
        $value = $data['value'];
        mysqli_query($con, "INSERT INTO bobot VALUES (null, '$id_kriteria', '$value')");

        return mysqli_affected_rows($con);
    }

    function tambahSkala($data) {
        global $con;

        $nama = $data['nama'];
        $value = $data['value'];
        mysqli_query($con, "INSERT INTO skala VALUES (null, '$nama', '$value')");

        return mysqli_affected_rows($con);
    }
    
    function tambahMatriks($data) {
        global $con;

        $alternatif = $data['alternatif'];
        $bobot = $data['bobot'];
        $skala = $data['skala'];
        mysqli_query($con, "INSERT INTO matriks VALUES (null, '$alternatif', '$bobot', '$skala')");

        return mysqli_affected_rows($con);
    }
?>
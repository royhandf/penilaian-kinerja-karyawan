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
        mysqli_query($con, "INSERT INTO alternatif VALUES ('', '$nama')");

        return mysqli_affected_rows($con);
    }

    function tambahKriteria($data) {
        global $con;

        $nama = $data['nama'];
        mysqli_query($con, "INSERT INTO kriteria VALUES ('', '$nama')");

        return mysqli_affected_rows($con);
    }

    function tambahBobot($data) {
        global $con;

        $id_kriteria = $data['id_kriteria'];
        $value = $data['value'];
        mysqli_query($con, "INSERT INTO bobot VALUES ('', '$id_kriteria', '$value')");

        return mysqli_affected_rows($con);
    }

    function tambahSkala($data) {
        global $con;

        $nama = $data['nama_skala'];
        $value = $data['value'];
        mysqli_query($con, "INSERT INTO skala VALUES ('', '$nama', '$value')");

        return mysqli_affected_rows($con);
    }
    
    function tambahMatriks($data) {
        global $con;

        $id_alternatif = $data['id_alternatif'];
        $id_bobot = $data['id_bobot'];
        $id_skala = $data['id_skala'];
        mysqli_query($con, "INSERT INTO matriks VALUES ('', '$id_alternatif', '$id_bobot', '$id_skala')");

        return mysqli_affected_rows($con);
    }
?>
<?php
    function getall_invoice(){
        $conn=connectdb();
        $stmt = $conn->prepare("SELECT * FROM tbl_order");
        $stmt->execute();
        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
        $kq=$stmt->fetchAll();
        return $kq;
    }
?>
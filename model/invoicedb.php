<?php
    function getall_invoice(){
        $conn=connectdb();
        $stmt = $conn->prepare("SELECT * FROM tbl_order");
        $stmt->execute();
        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
        $kq=$stmt->fetchAll();
        return $kq;
    }

    function getoneInvoice($id)
    {
    $conn=connectdb();
    $stmt = $conn->prepare("SELECT * FROM tbl_order WHERE id=".$id);
    $stmt->execute();
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $kq=$stmt->fetchAll();
    return $kq;
    }

    function update_invoice($id,$id_ee,$status){
        $conn=connectdb();
        $sql = "UPDATE tbl_order SET status='$status', employee_pr='$id_ee' WHERE id=".$id;
        $stmt = $conn->prepare($sql);
        $stmt->execute();
    }
?>
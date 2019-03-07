<?php

include('functions.php');

//DB接続
$pdo = db_conn();

//データ表示SQL作成
$sql = 'SELECT * FROM php05_charenger ORDER BY indate DESC';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//データ表示
// もし$statusに何も入っていないならば、エラーを出す
if ($status==false) {
    errorMsg($stmt);
} else {
    // 配列にデータを入れる
    $res = [];
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $res[] = $result; //配列に入れたものをresultで表示
    
    }
     echo json_encode($res);//json形式にして出力

}



<?php

include('functions.php');

// 入力チェック　task,deadlineがあるか
if (
    !isset($_POST['name']) || $_POST['name']=='' ||
    !isset($_POST['image']) || $_POST['image']==''
) {
    exit('ParamError');
}

//POSTデータ取得
$task = $_POST['name'];
$deadline = $_POST['image'];
$comment = $_POST['comment'];

//DB接続
$pdo = db_conn();

//INSERT INFOでレコードの新規追加登録->SQLへ（データ作成用のSQL作成実行）
$sql ='INSERT INTO php05_charenger(id, name, image, comment, indate) VALUES(NULL, :a1, :a2, :a3, sysdate())';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':a1', $name, PDO::PARAM_STR);    
$stmt->bindValue(':a2', $image, PDO::PARAM_STR);   //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a3', $comment, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$status = $stmt->execute();

//データ表示SQL作成（データ表示用のSQL作成実行）
$sql = 'SELECT * FROM php05_charenger ORDER BY name DESC';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//データ表示
if ($status==false) {
    errorMsg($stmt);
} else {
    $res = [];
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $res[] = $result; //配列に入れたものをresultで表示
    
    }
     echo json_encode($res);//json形式にして出力

}



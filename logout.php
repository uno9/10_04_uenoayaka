<?php

session_start();

// session内の配列を空に
$_SESSION=array();

//クッキー内のデータを過去にし破棄
if (isset($_COOKIE[session_name()])) {
    setcookie(session_name(), '', time()-42000, '/'); //有効期限はないという処理
}

//サーバ側での、セッションIDの破棄
session_destroy();

//処理後，ログイン画面へリダイレクト
header('Location:login.php');
exit();

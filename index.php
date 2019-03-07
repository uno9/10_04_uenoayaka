<?PHP

//session start
session_start();
// var_dump($_SESSION["kanri_flg"]);

//0. 読み込み
include('functions.php');

//0.5 ログインチェック
chk_ssid();

$menu= menu($_SESSION["kanri_flg"]);
$k_flg=$_SESSION["kanri_flg"];

$user_menu='';



?>


<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>JankenHeven</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <style>
        div{
            padding: 10px;
            font-size:20px;
            }
    </style>
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">JankenHeven</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>

            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="ajax_index.php">挑戦者板</a>

                        <?=$user_menu?>                       

                        <a class="nav-item"><a class="nav-link" href="logout.php">ログアウト</a>
                    </li>
                </ul>
            </div>
        </nav>
        <ul>
            <li>ポーカー</li>
            <li>にらめっこ</li>
            <li>かくれんぼ</li>
        </ul>
    </header>

    <form method="post" action="insert.php" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">挑戦者名</label>
            <input type="text" class="form-control" id="name" name="name">
        </div>
        <div class="form-group">
            <label for="upfile">Image</label>
            <input type="file" class="form-control-file" id="upfile" name="upfile" accept="image/*" capture="camera">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary" id="submit">Submit</button>
        </div>
        
    <script src="https://ajax.script.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    

</body>

</html>
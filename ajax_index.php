<?php

session_start();
include('functions.php');
chk_ssid();

$pdo=db_conn();


?>


<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>挑戦者たち
    </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">挑戦者たち</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- ナビ -->
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a id="ajax_get" class="nav-link" href="#">一覧表示</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- ajax_post.phpでポストするため、postの指定はしない -->
    <form>
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="task" name="task" placeholder="Enter task">
        </div>
        <div class="form-group">
            <label for="comment">Comment</label>
            <textarea class="form-control" id="comment" name="comment" rows="3"></textarea>
        </div>
        <!-- type=buttonを指定しないとsubmitに自動でなる -->
        <div class="form-group">
            <button type="button" id="send" class="btn btn-primary">Submit</button>
        </div>
    </form>

    <ul id="echo" class="list-group">
        <!-- データ表示部分 -->
    </ul>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>

        // DBから取得したデータを表示する関数
        // function listData(data) {


        // }

        // DBからデータを取得する関数
        function selectData() {
            const url = 'ajax_get.php'; //get.phpからデータを取ってくる
            $.getJSON(url) //jsonにする

                //done:成功
                .done(function (data, textStatus, jqXHR) {
                    result = listData(data);
                    $('#echo').html(result);
                })
                //fail:失敗
                .fail(function (jqXHR, textStatus, errorThrown) {
                    console.log('error');

                })
                //always:どちらでも
                .always(function () {
                    console.log('complete');

                });
        }
        //selectDataを実行
        selectData();


        //  DBへデータを登録する関数
        function insertData() {
            const url = 'ajax_post.php'; // post.phpにデータを送る
            const value = {
                //データの中身を配列にしてvalueに入れる
                name: $('#name').val(),
                // image: $('#image').val(),
                comment: $('#comment').val()
            };

            // ajaxでデータを送信
            $.ajax({
                dataType: 'json',//jsonの形で送る
                url: url,//post.phpへ
                type: 'POST',
                data: value, //上記で作成した const value を送る
            })
                //done:成功
                .done(function (data) {
                    console.log(data);
                })
                //fail:失敗
                .fail(function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log('error');
                })
                //always:どちらでも
                .always(function () {
                    console.log('complete');
                });
        }

        // 読み込み時にDBからデータ取得

        // 送信でDBにデータ送信


        $('#send').on('click', function () {
            insertData(); //insertDataの実行

            $('#name').val(''); //taskを空に
            // $('#image').val(''); //deadlineを空に
            $('#comment').val(''); //commentを空に

        });
    </script>

</body>

</html>
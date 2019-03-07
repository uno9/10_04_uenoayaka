<?php

session_start();

// 現在session
$old_session_id=session_id();
// 新session発行
session_regenerate_id(true);
// 新session取得
$new_session_id=session_id();




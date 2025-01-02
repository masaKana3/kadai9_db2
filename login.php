<?php
session_start();

include("funcs.php");
$pdo = db_conn();

// ログイン処理
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // 簡易的なユーザー認証情報
    $username = 'admin'; // ユーザー名仮
    $password = 'password123'; // パスワード仮

    // フォーム入力値を取得
    $inputUsername = $_POST['username'] ?? '';
    $inputPassword = $_POST['password'] ?? '';

    // 認証チェック
    if ($inputUsername === $username && $inputPassword === $password) {
        $_SESSION['loggedin'] = true;
        header('Location: read.php');
        exit();
    } else {
        $error = 'ユーザー名またはパスワードが間違っています。';
    }

    if (empty($_SESSION['loggedin'])) {
        header('Location: login.php');
        exit();
    }
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>体調に関するアンケート</title>
    
</head>

<body>
    <h1>管理ページ ログイン</h1>
    
    <?php if (!empty($error)): ?>
        <p style="color: red;"><?= h($error) ?></p>
    <?php endif; ?>
    <div class="login-container">
        <form method="post" action="">
            <label for="username">ユーザー名:</label>
            <input type="text" id="username" name="username" required>
            <br>
            <label for="password">パスワード:</label>
            <input type="password" id="password" name="password" required>
            <br>
            <button id="submit-button" type="submit">ログイン</button>
        </form>
    </div>
</body>
</html>
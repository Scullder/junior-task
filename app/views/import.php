<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Import</title>
</head>
<body class="bg-gray-200 text-black text-sm">
    <div class="container mx-auto flex justify-center item-center">
        <div class="bg-white w-2/5 my-32 border border-gray-300 p-3 rounded">
            <h1 class="text-center text-xl font-bold mb-5">Выбор файла для импорта</h1>
            <form enctype="multipart/form-data" action="/import" method="post">
                <input type="file" name="file">
                <br>
                <button type="submit" class="bg-blue-500 text-white p-3 rounded shadow my-5 mx-auto">импортировать</button>
            </form>
        </div>
    </div>

</body>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Description</title>
</head>
<body class="bg-gray-200 text-black text-sm">
<div class="container mx-auto my-16 rounded py-10 bg-white p-10">

    <div class="font-bold text-3xl"><?php echo '#' . $features['id'] . ' - ' . $features['chairName']?></div>
    <div class="flex my-5 text-lg">
        <div class="w-2/4 space-y-2">
            <p class="border-b border-gray-200 p-3">артикул: <i><?php echo $features['article'] ?></i></p>
            <p class="border-b border-gray-200 p-3">материал: <i><?php echo $features['material'] ?></i></p>
            <p class="border-b border-gray-200 p-3">натур. кожа: <i><?php echo $features['leather'] ?></i></p>
            <p class="border-b border-gray-200 p-3">ширина: <i><?php echo $features['width'] ?></i></p>
            <p class="border-b border-gray-200 p-3">диапазон регулировки: <i><?php echo $features['control_range'] ?></i></p>
            <p class="border-b border-gray-200 p-3">высота: <i><?php echo $features['height'] ?></i></p>
            <p class="border-b border-gray-200 p-3">высота спинки: <i><?php echo $features['height_back'] ?></i></p>
            <p class="border-b border-gray-200 p-3">глубина: <i><?php echo $features['depth'] ?></i></p>
            <p class="border-b border-gray-200 p-3">макс нагрузка: <i><?php echo $features['max_weight'] ?></i></p>
            <p class="border-b border-gray-200 p-3">цвета: <i><?php echo $features['colors'] ?></i></p>
            <p class="border-b border-gray-200 p-3">ролики: <i><?php echo $features['rollers'] ?></i></p>
            <p class="border-b border-gray-200 p-3">пятилучье: <i><?php echo $features['five_pointed'] ?></i></p>
            <p class="border-b border-gray-200 p-3">вес (кг) коробки: <i><?php echo $features['weight'] ?></i></p>
            <p class="border-b border-gray-200 p-3">объем: <i><?php echo $features['volume'] ?></i></p>
            <p class="border-b border-gray-200 p-3">габариты изделия: <i><?php echo $features['size_chair'] ?></i></p>
            <p class="border-b border-gray-200 p-3">габариты упаковки: <i><?php echo $features['size_package'] ?></i></p>
            <p class="border-b border-gray-200 p-3">ширина сиденья: <i><?php echo $features['place_width'] ?></i></p>
            <p class="border-b border-gray-200 p-3">глубина сиденья: <i><?php echo $features['place_depth'] ?></i></p>
            <p class="border-b border-gray-200 p-3">механизм качания: <i><?php echo $features['mechanism'] ?></i></p>
            <p class="border-b border-gray-200 p-3">название раздела: <i><?php echo $features['section'] ?></i></p>
            <p class="border-b border-gray-200 p-3">производитель: <i><?php echo $features['producer'] ?></i></p>
            <p class="border-b border-gray-200 p-3">гарантия: <i><?php echo $features['guarantee'] ?></i></p>
        </div>
        <div class="w-2/4">
            <img src="<?php echo $features['image'] ?>">
        </div>
    </div>

</div>
</body>
</html>


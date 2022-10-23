<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Products</title>
</head>
<body class="bg-gray-200 text-black text-sm">
    <div class="container mx-auto my-5 rounded pb-10">
        <form action="\import" method="get" class="my-5">
            <button type="submit" class="bg-white p-3 rounded ml-auto flex border border-gray-100 shadow font-medium">импорт записей</button>
        </form>

        <table class="mx-auto bg-white rounded border-gray-300 shadow-lg ">
            <thead class="sticky top-0">
                <tr class="bg-gray-100 border-b border-slate-200">
                    <th class="text-left p-4">
                        <a href="/?sort=id">ID<?php echo $active['id'] ?></a>
                    </th>
                    <th class="text-left p-4">
                        <a href="/?sort=chairName">Наименование товара<?php echo $active['chairName'] ?></a>
                    </th>
                    <th class="text-left p-4">
                        <a href="/?sort=sectionName">Раздел<?php echo $active['sectionName'] ?></a>
                    </th>
                    <th class="text-left p-4">
                        <a href="/?sort=producerName">Производитель<?php echo $active['producerName'] ?></a>
                    </th>
                    <th class="text-left p-4">
                        Инструкция
                    </th>
                    <th class="text-left p-4">
                        Изображение для печати
                    </th>
                </tr>
            </thead>
            <tbody class="text-gray-800">
                <?php
                    foreach ($chairs as $chair) {
                ?>
                    <tr class="border-b border-slate-200">
                        <td class="p-4"><?php echo $chair['id'] ?></td>
                        <td class="p-4">
                            <a href="/description?chair_id=<?php echo $chair['id'] ?>">
                                <u><?php echo $chair['chairName'] ?></u>
                            </a>
                        </td>
                        <td class="p-4"><?php echo $chair['sectionName'] ?></td>
                        <td class="p-4"><?php echo $chair['producerName'] ?></td>
                        <td class="p-4">
                            <form action="<?php echo $chair['creating_manual'] ?>" method="get" target="_blank">
                                <button type="submit" class="bg-green-600 p-2 text-white rounded mx-auto flex">открыть</button>
                            </form>
                        </td>
                        <td class="p-5 ">
                            <form action="<?php echo $chair['print_image'] ?>" method="get" target="_blank">
                                <button type="submit" class="bg-sky-500 p-2 text-black rounded mx-auto flex">скачать</button>
                            </form>
                        </td>
                    </tr>
                <?php
                    }
                ?>
            </tbody>
        </table>

        <div class="w-full">
            <div class="flex mx-auto space-x-3 justify-center my-16">
                <?php
                    for ($page = 1; $page <= $pages; $page++) {
                ?>
                        <form action="\" method="get">
                            <input type="text" value="<?php echo $page ?>" name='page' hidden>
                            <input type="text" value="<?php echo $sort ?>" name='sort' hidden>
                            <button type="submit" class="w-10 h-10 bg-gray-100 border border-blue-300 flex items-center justify-center rounded hover:bg-white"><?php echo $page ?></button>
                        </form>
                <?php
                    }
                ?>
            </div>
        </div>
    </div>
</body>
</html>


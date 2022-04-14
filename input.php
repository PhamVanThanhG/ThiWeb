<?php
session_start();
require "./config.php";
require "./model/db.php";
require "./model/category.php";
require "./model/post.php";
$category = new Category();
$post = new Post();
$getAllCate = $category->getAllCategories();
$data = json_decode(file_get_contents('php://input'), true);
$index = $data['index'];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    for ($i = ($index - 5); $i < $index; $i++) {
    ?>
        <div class="card">
            <div class="category">
                <?php
                $getAllCategoriesByPostId = $category->getCategoriesByPostId($_SESSION['show'][$i]['post_id']);
                foreach ($getAllCategoriesByPostId as $value) {
                    if ($value['category_id'] == 1) { ?>
                        <span class="cate-child cate1">Phát triển</span>
                    <?php
                    } else if ($value['category_id'] == 2) {
                    ?>
                        <span class="cate-child cate2">Thành lập</span>
                    <?php
                    } else {
                    ?>
                        <span class="cate-child cate3">Con người</span>
                <?php
                    }
                }
                ?>
            </div>
            <a href="#" class="post-img"> <img class="card-img-top img-news" src="./images/<?php echo ($_SESSION['show'][$i]['post_photo']) ?>" alt="">
            </a>
            <div class="card-body">
                <a href="#">
                    <h4><?php echo ($_SESSION['show'][$i]['post_id'] . $_SESSION['show'][$i]['post_title']) ?></h4>
                </a>
                <p>
                    <?php
                    echo substr($_SESSION['show'][$i]['post_content'], 0, 150) . "...";
                    ?>
                </p>
                <span><?php echo ($_SESSION['show'][$i]['post_date']) ?></span>
                <span class="like"><?php echo ($_SESSION['show'][$i]['post_like']) ?> <i class="fa fa-heart"></i></span>
            </div>
        </div>
    <?php
    }
    $_SESSION['index'] = $index;
    ?>
</body>

</html>
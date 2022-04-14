<?php
session_start();
require "./config.php";
require "./model/db.php";
require "./model/category.php";
require "./model/post.php";
$category = new Category();
$post = new Post();
$getAllCate = $category->getAllCategories();
$_SESSION['show'] = $post->getAllPosts();
$_SESSION['show'] = $_SESSION['show'];
$_SESSION['index'] = 5;
//var_dump($_SESSION['show'][0]);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>01 Phạm Văn Thanh</title>
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./fontawesome-free-5.15.4-web/css/all.css">
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg">
            <a href="trangchu.html"><img src="./images/logo.png" alt="" height="60"></a>
            <ul class="navbar-nav">
                <?php
                for ($i = 0; $i < count($getAllCate); $i++) {
                    if ($i == 0) {
                ?>
                        <li>
                            <a id="<?php echo ("tieude" . $getAllCate[$i]['category_id']) ?>" href="#"><?php echo ($getAllCate[$i]['category_name']) ?></a>
                        </li>
                    <?php
                    } else {
                    ?>
                        <li>
                            <a id="<?php echo ("tieude" . $getAllCate[$i]['category_id']) ?>" href="#"><?php echo ($getAllCate[$i]['category_name']) ?></a>
                        </li>
                <?php
                    }
                }
                ?>
            </ul>
        </nav>
    </header>
    <div class="container">
        <section class="news">
            <div class="row">
                <div class="col-12 col-md-8">
                    <h2 class="news-text">TIN MỚI</h2>
                </div>
            </div>
            <div class="card-columns" id="post-body">
                <?php
                for ($i = 0; $i < $_SESSION['index']; $i++) {
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
                                <h4><?php echo ($_SESSION['show'][$i]['post_title']) ?></h4>
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
                ?>
            </div>
            <div class="load-more">
                <button id="btnloadmore" onclick="getData()">Xem thêm</button>
            </div>
            <!-- <div class="btn-load-more">
                <button type="button" class="btn btn-primary" id="btn-load-more">Xem thêm</button>
            </div> -->
        </section>
    </div>
    <!-- FOOTER -->
    <footer id="footer">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-4">
                    <a href="#" class="logo"><img src="./images/logoThanhDoanTP.png" style="height: 70px;" alt=""></a>
                </div>
                <div class="col-md-5">
                    <h4 class="text-white">Info</h4>
                    Địa chỉ: <span class="text-white">Số 1 Phạm Ngọc Thạch, Quận 1, TP HCM</span><br />
                    Email: <span class="text-white">thanhdoan@tphcm.gov.vn</span><br />
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->

        <div class="footer-copyright text-center mt-5">
            &copy;2022 Bản quyền thuộc về Thành Đoàn Thành phố Hồ Chí Minh
        </div>
    </footer>
    <script>
        const data = {
            index: 5
        }
        const postbody = document.getElementById('post-body');
        const getData = async () => {
            const url = './input.php';
            <?php
            if (count($_SESSION['show']) < ($_SESSION['index'] + 5)) {
                $_SESSION['index'] = count($_SESSION['show']);
            } else {
                $_SESSION['index'] += 5;
            }
            ?>
            const res = await fetch(url, {
                method: "POST",
                headers: {
                    'Content-Type': 'application/json; charset=utf-8',
                    'Accept': 'application/json; charset=utf-8'
                },
                body: JSON.stringify(data)
            })
            const result = await res.text();

            // console.log(result);
            postbody.innerHTML = postbody.innerHTML + result;
            data.index = data.index + 5;
            alert(data.index);
            //divPrice.innerText = "Price: " + result.product_price
        }
    </script>
    <script src="./js/jquery-3.6.0.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/script.js"></script>
</body>

</html>
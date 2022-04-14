<?php
class Category extends Db{
    public function getAllCategories()
    {
        //Quyery
        $sql = self::$connection->prepare("SELECT * FROM `categories`");
        $sql->execute();
        $items = array();//Var array items
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);//Get array Products
        return $items;
    }
    public function getCategoriesByPostId($postid){
        //Quyery
        $sql = self::$connection->prepare("SELECT * FROM `posts_categories` WHERE `post_id` = ?");
        $sql->bind_param("i", $postid);
        $sql->execute();
        $items = array();//Var array items
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);//Get array Products
        return $items;
    }
}
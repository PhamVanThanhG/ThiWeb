<?php
class Post extends Db{
    public function getAllPosts()
    {
        //Quyery
        $sql = self::$connection->prepare("SELECT * FROM `posts` ORDER BY post_date DESC");
        $sql->execute();
        $items = array();//Var array items
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);//Get array Products
        return $items;
    }
}
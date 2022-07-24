create database if not exists `my_dinner`;
use `my_dinner`;
create table if not exists `recipi` (
    `id` bigint(20) unsigned not null auto_increment comment 'レシピID',
    `title` varchar(100) not null comment 'レシピタイトル',
    `description` varchar(500) not null comment 'レシピ説明文',
    `price` int unsigned not null comment 'レシピの大体の価格',
    `image_path` text comment '商品画像パス',
    `create_time` datetime not null default current_timestamp comment '作成日時',
    `update_time` datetime not null default current_timestamp on update current_timestamp comment '更新日時',
    primary key (`id`),
    unique key `title_unique` (`title`)
    ) engine=innodb default charset=utf8mb4 comment='レシピテーブル';
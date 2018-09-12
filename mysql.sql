DROP TABLE IF exists dynasty;
CREATE TABLE `dynasty` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '父id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
  `introduction` text NOT NULL COMMENT '简介',
	`stime` varchar(16) not null COMMENT '起始时间',
	`etime` varchar(16) not null COMMENT '结束时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dynasty_name_index` (`name`),
	KEY `dynasty_fid_index` (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE if exists country;
CREATE TABLE `country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '父id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
	`capital` varchar(125) COLLATE utf8mb4_unicode_ci COMMENT '首都',
  `introduction` text NOT NULL COMMENT '简介',
	`stime` varchar(16) not null COMMENT '起始时间',
	`etime` varchar(16) not null COMMENT '结束时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_name_index` (`name`),
	KEY `country_did_index` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE if exists religion;
CREATE TABLE `religion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
  `introduction` text NOT NULL COMMENT '简介',
	`stime` varchar(16) not null COMMENT '起始时间',
	`etime` varchar(16) not null COMMENT '结束时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `religion_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE if exists personage;
CREATE TABLE `personage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
	`sex` tinyint(1) not null default 1 COMMENT '1.男,2.女,3.人妖',
	`height` int(4) default 0 comment '身高(cm)',
	`weight` int(4) default 0 comment '体重(千克)',
	`type` int(4) default 0 comment '职位,成就',
  `introduction` text NOT NULL COMMENT '简介',
	`cid` int(11) default 0 comment '国家id',
	`rid` int(11) default 0 comment '宗教id',
	`stime` varchar(16) not null COMMENT '起始时间',
	`etime` varchar(16) not null COMMENT '结束时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `personage_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE if exists works;
CREATE TABLE `works` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
	`uid` int(10) default null comment '作者ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci COMMENT '名称',
	`type` int(4) default null comment '作品类型',
  `introduction` text NOT NULL COMMENT '简介',
	`content` text NOT NULL COMMENT '内容',
	`stime` varchar(16) not null COMMENT '起始时间',
	`etime` varchar(16) not null COMMENT '结束时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
	KEY `works_uid_index` (`uid`),
  KEY `works_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE if exists incident;
CREATE TABLE `incident` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci,
	`type` int(4) default null comment '类型',
  `introduction` text NOT NULL COMMENT '简介',
	`cid` int(11) default 0 comment '国家id',
	`stime` varchar(16) not null COMMENT '起始时间',
	`etime` varchar(16) not null COMMENT '结束时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT(title,introduction)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `t_config` (`id`, `catid`, `name`, `value`, `tag`, `lock`, `updatetime`) VALUES (33, 1, 'tpl', 'hyacinth', '全新的整站模版', '1', '1546063186');
DELETE FROM `t_config` WHERE `t_config`.`id` = 29;
DELETE FROM `t_config` WHERE `t_config`.`id` = 19;
DELETE FROM `t_config` WHERE `t_config`.`id` = 12;
ALTER TABLE `t_products` ADD `price_ori` DECIMAL(10,2) NOT NULL DEFAULT '0.00' COMMENT '原价' AFTER `price`,ADD `qty_virtual` INT(11) NOT NULL DEFAULT '0' COMMENT '虚拟库存' AFTER `qty`, ADD `qty_switch` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '0关,1开' AFTER `qty_virtual`, ADD `qty_sell` INT(11) NOT NULL DEFAULT '0' COMMENT '销量' AFTER `qty_switch`;
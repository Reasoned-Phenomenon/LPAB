DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
	`role_num`	int	NOT NULL,
	`nm`	VARCHAR(10)	NOT NULL
);

DROP TABLE IF EXISTS `classification`;

CREATE TABLE `classification` (
	`classification_num`	int	NOT NULL,
	`main_category`	VARCHAR(30)	NOT NULL,
	`middle_category`	VARCHAR(30)	NOT NULL,
	`sub_category`	VARCHAR(30)	NOT NULL
);

DROP TABLE IF EXISTS `place`;

CREATE TABLE `place` (
	`place_num`	int	NOT NULL,
	`division`	VARCHAR(30)	NULL,
	`nm`	VARCHAR(30)	NULL
);

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
	`member_num`	int	NOT NULL,
	`id`	VARCHAR(10)	NOT NULL,
	`pw`	VARCHAR(20)	NOT NULL
);

DROP TABLE IF EXISTS `account_book`;

CREATE TABLE `account_book` (
	`account_book_num`	int	NOT NULL,
	`dt`	Date	NOT NULL,
	`amount`	int	NOT NULL,
	`purpose`	VARCHAR(100)	NULL,
	`memo`	VARCHAR(300)	NULL,
	`classification_num`	int	NULL,
	`place_num`	int	NULL
);

ALTER TABLE `role` ADD CONSTRAINT `PK_ROLE` PRIMARY KEY (
	`role_num`
);

ALTER TABLE `classification` ADD CONSTRAINT `PK_CLASSIFICATION` PRIMARY KEY (
	`classification_num`
);

ALTER TABLE `place` ADD CONSTRAINT `PK_PLACE` PRIMARY KEY (
	`place_num`
);

ALTER TABLE `member` ADD CONSTRAINT `PK_MEMBER` PRIMARY KEY (
	`member_num`
);

ALTER TABLE `account_book` ADD CONSTRAINT `PK_ACCOUNT_BOOK` PRIMARY KEY (
	`account_book_num`
);


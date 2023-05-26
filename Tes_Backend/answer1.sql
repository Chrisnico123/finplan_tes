-- Active: 1684955416692@@localhost@3306@finplan
CREATE DATABASE finplan_mysql
    DEFAULT CHARACTER SET = 'utf8mb4';

USE finplan_mysql;

CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `gender` VARCHAR(2) NOT NULL,
    `status` VARCHAR(50) NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB;

CREATE TABLE `hobbies` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `level` INT NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB;


CREATE TABLE `map_user_hobby` (
    `id` INT AUTO_INCREMENT,
    `id_user` INT NOT NULL,
    `id_hobby` INT NOT NULL,
    `status` VARCHAR(50),
    PRIMARY KEY(`id`),
    CONSTRAINT map_user_hobby_fk1
        FOREIGN KEY (`id_user`) REFERENCES users (id),
    CONSTRAINT map_user_hobby_fk2
        FOREIGN KEY (`id_hobby`) REFERENCES hobbies (id)
) ENGINE=InnoDB;

CREATE INDEX status_idx ON map_user_hobby(status);
CREATE INDEX name_idx ON hobbies(name);

-- INPUT TABLE
INSERT INTO `users` (`id`, `name`, `gender`, `status`) VALUES
(1, 'Frasch', 'F', 'active'),
(2, 'Garmuth', 'M', 'active'),
(3, 'Goliath', 'M', 'active'),
(4, 'Luna', 'F', 'active'),
(5, 'Zeus', 'M', 'active'),
(6, 'Aphrodite', 'F', 'active'),
(7, 'Ares', 'M', 'active'),
(8, 'Lina', 'F', 'active'),
(9, 'Lanaya', 'F', 'active'),
(10, 'Hades', 'M', 'active');

INSERT INTO `hobbies` (`id`, `name`, `level`) VALUES
(1, 'Running', 8),
(2, 'Skipping', 5),
(3, 'Push Up', 10);

INSERT INTO `map_user_hobby` (`id`, `id_user`, `id_hobby`, `status`) VALUES
(1, 1, 1, 'active'),
(2, 3, 1, 'active'),
(3, 8, 3, 'deleted'),
(4, 2, 2, 'active'),
(5, 4, 1, 'deleted'),
(6, 6, 2, 'active'),
(7, 5, 3, 'active'),
(8, 8, 1, 'active'),
(9, 7, 2, 'active'),
(10, 4, 2, 'active'),
(11, 9, 3, 'deleted'),
(12, 10, 2, 'deleted'),
(13, 3, 2, 'active'),
(14, 2, 3, 'active'),
(15, 10, 2, 'active');

SHOW TABLES;
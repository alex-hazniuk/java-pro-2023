CREATE DATABASE `it_school` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `it_school`;

CREATE TABLE `homework` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `name` varchar(45) NOT NULL,
                            `description` varchar(45) NOT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `lesson` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `name` varchar(45) NOT NULL,
                          `updated_at` datetime NOT NULL,
                          `homework_id` int NOT NULL,
                          PRIMARY KEY (`id`),
                          UNIQUE KEY `homework_id_UNIQUE` (`homework_id`),
                          KEY `homework_id_idx` (`homework_id`),
                          CONSTRAINT `homework_id_fk` FOREIGN KEY (`homework_id`) REFERENCES `homework` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `schedule` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `name` varchar(45) NOT NULL,
                            `updated_at` datetime NOT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `schedule_lesson` (
                                   `schedule_id` int NOT NULL,
                                   `lesson_id` int NOT NULL,
                                   PRIMARY KEY (`schedule_id`,`lesson_id`),
                                   KEY `lesson_id_fk_idx` (`lesson_id`),
                                   CONSTRAINT `lesson_id_fk` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`),
                                   CONSTRAINT `schedule_id_fk` FOREIGN KEY (`schedule_id`) REFERENCES `homework` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

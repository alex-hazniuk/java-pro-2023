CREATE DATABASE `it_school` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */
                            /*!80016 DEFAULT ENCRYPTION='N' */;

USE `it_school`;

CREATE TABLE `homework` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `name` varchar(45) NOT NULL,
                            `description` varchar(45) NOT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `lesson` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `name` varchar(45) NOT NULL,
                          `updated_at` datetime NOT NULL,
                          `homework_id` int NOT NULL,
                          PRIMARY KEY (`id`),
                          KEY `lesson_homework_fk_idx` (`homework_id`),
                          CONSTRAINT `lesson_homework_fk` FOREIGN KEY (`homework_id`) REFERENCES `homework` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `schedule` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `name` varchar(45) NOT NULL,
                            `updated_at` datetime NOT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `schedule_lesson` (
                                   `schedule_id` int NOT NULL,
                                   `lesson_id` int NOT NULL,
                                   KEY `schedule_fk` (`schedule_id`),
                                   KEY `lesson_fk` (`lesson_id`),
                                   CONSTRAINT `lesson_fk` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`),
                                   CONSTRAINT `schedule_fk` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP DATABASE IF EXISTS `bank`;
CREATE DATABASE bank;

USE bank;

CREATE TABLE `Individuals` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(30) NOT NULL,
  `last_name` VARCHAR(30) NOT NULL,
  `middle_name` VARCHAR(30) DEFAULT NULL,
  `passport` VARCHAR(30) NOT NULL,
  `INN` VARCHAR(12) NOT NULL,
  `SNILS` VARCHAR(11) NOT NULL,
  `license` VARCHAR(30) DEFAULT NULL,
  `additional_docs` VARCHAR(30) DEFAULT NULL,
  `notes` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `Individuals` (`id`, `first_name`, `last_name`, `middle_name`, `passport`, `INN`, `SNILS`, `license`, `additional_docs`, `notes`) VALUES
(1, 'Николай', 'Николаевич', 'Николаевич', '5678 901234', 987654321098, 87654321098, '5678 901234', '5678 901234', 'Учитель математики'),
(2, 'Мария', 'Марьянова', 'Марьяновна', '9012 345678', 765432109876, 65432109876, '9012 345678', '9012 345678', 'Библиотекарь'),
(3, 'Дмитрий', 'Дмитриевич', 'Дмитриевич', '3456 789012', 654321098765, 54321098765, '3456 789012', '3456 789012', 'Инженер'),
(4, 'Елена', 'Еленова', 'Еленовна', '7890 123456', 543210987654, 43210987654, '7890 123456', '7890 123456', 'Физик'),
(5, 'Владимир', 'Владимирович', 'Владимирович', '2345 678901', 432109876543, 32107896543, '2345 678901', '2345 678901', 'Программист');

COMMIT;
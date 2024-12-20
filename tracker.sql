
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `transactions` (`id`, `user_id`, `amount`, `description`, `category`, `date`) VALUES
(2, 1, 5000, 'Seblak', 'Food', '2024-12-17 08:36:40');


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `role`) VALUES
(1, 'kano', 'kano', 'kano123@gmail.com', 'kano', '$5$rounds=535000$nbTiLnvdgr6tzih3$QqADJy4IW0NmzrOhSkPBSuaU1LH6tliYy1AnE1XCSH4', 'user'),
(2, 'rizel', 'rizel', 'rizel@gmail.com', 'rizel', '$5$rounds=535000$UBpB/8W6BU6zauD2$pi0IWcq5R9WIJiD0dByPzrFc2DhSAbf/ZEZmJpb48j0', 'user');


ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);




ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;


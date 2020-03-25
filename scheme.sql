
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `lots` (
  `id_of_lot` int(11) NOT NULL,
  `date_of_create` datetime NOT NULL,
  `title_of_lot` varchar(45) NOT NULL,
  `description` varchar(100) NOT NULL,
  `img` varchar(50) NOT NULL,
  `start_price` int(11) NOT NULL,
  `date_of_completion` datetime NOT NULL,
  `bet_step` int(11) NOT NULL,
  `id_of_seller` int(11) DEFAULT NULL,
  `id_of_winner` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `rate` (
  `rate_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id_of_lot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `user` (
  `rate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_reg` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  `name_of_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  `contacts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);




ALTER TABLE `lots`
  ADD PRIMARY KEY (`id_of_lot`),
  ADD UNIQUE KEY `id_of_lot` (`id_of_lot`),
  ADD KEY `start_price` (`start_price`),
  ADD KEY `bet_step` (`bet_step`),
  ADD KEY `id_of_seller` (`id_of_seller`),
  ADD KEY `id_of_winner` (`id_of_winner`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `date_of_completion` (`date_of_completion`);


ALTER TABLE `rate`
  ADD PRIMARY KEY (`rate_id`),
  ADD UNIQUE KEY `rate_id` (`rate_id`),
  ADD KEY `amount` (`amount`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_of_lot` (`id_of_lot`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);




ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `lots`
  MODIFY `id_of_lot` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `rate`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;




ALTER TABLE `lots`
  ADD CONSTRAINT `lots_ibfk_1` FOREIGN KEY (`id_of_seller`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lots_ibfk_2` FOREIGN KEY (`id_of_winner`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lots_ibfk_3` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`id_of_lot`) REFERENCES `lots` (`id_of_lot`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;


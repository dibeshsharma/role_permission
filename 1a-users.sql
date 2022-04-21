CREATE TABLE `users` (
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `users`
  ADD PRIMARY KEY (`user_email`);

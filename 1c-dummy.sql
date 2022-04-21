-- (A) ROLES
INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'Power User');

-- (B) PERMISSIONS
INSERT INTO `permissions` (`perm_id`, `perm_mod`, `perm_desc`) VALUES
(1, 'USR', 'Access users'),
(2, 'USR', 'Create new users'),
(3, 'USR', 'Update users'),
(4, 'USR', 'Delete users');

-- (C) ROLE PERMISSIONS
INSERT INTO `roles_permissions` (`role_id`, `perm_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1);

-- (D) DUMMY USERS
INSERT INTO `users` (`user_email`, `user_password`, `role_id`) VALUES
('john@doe.com', '123456', 1),
('jane@doe.com', '123456', 2);
